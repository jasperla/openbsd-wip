#ifndef __LOGGING_HPP__
#define __LOGGING_HPP__

/*
 * Test this with something like:
 * g++ -std=c++11 -x c++ -pthread -DLOGGING_LEVEL_ALL -DTEST_LOGGING logging.hpp -o logging_test
 * ./logging_test
 */

#include <string>
#include <stdexcept>
#include <iostream>
#include <fstream>
#include <sstream>
#include <mutex>
#include <unordered_map>
#include <memory>
#include <chrono>
#include <ctime>
#include <cstdlib>

namespace logging {

//returns formated to: 'year/mo/dy hr:mn:sc.xxxxxx'
inline std::string timestamp() {
  //get the time
  std::chrono::system_clock::time_point tp = std::chrono::system_clock::now();
  std::time_t tt = std::chrono::system_clock::to_time_t(tp);
  std::tm gmt{}; gmtime_r(&tt, &gmt);
  using sec_t = std::chrono::duration<double>;
  std::chrono::duration<double> fractional_seconds =
    (tp - std::chrono::system_clock::from_time_t(tt)) + std::chrono::seconds(gmt.tm_sec);
  //format the string
  std::string buffer("year/mo/dy hr:mn:sc.xxxxxx");
  sprintf(&buffer.front(), "%04d/%02d/%02d %02d:%02d:%09.6f", gmt.tm_year + 1900, gmt.tm_mon + 1,
    gmt.tm_mday, gmt.tm_hour, gmt.tm_min, fractional_seconds.count());
  return buffer;
}

//a factory that can create loggers (that derive from 'logger') via function pointers
//this way you could make your own logger that sends log messages to who knows where
class logger;
using logging_config_t = std::unordered_map<std::string, std::string>;
using logger_creator = logger *(*)(const logging_config_t&);
class logger_factory : 
    public std::unordered_map<std::string, logger_creator> {
 public:
  logger* produce(const logging_config_t& config) const {
    //grab the type
    auto type = config.find("type");
    if(type == config.end())
      throw std::runtime_error("Logging factory configuration requires a type of logger");
    //grab the logger
    auto found = find(type->second);
    if(found != end())
      return found->second(config);
    //couldn't get a logger
    throw std::runtime_error("Couldn't produce logger for type: " + type->second);
  }
};

//the log levels we support
enum class log_level : char { TRACE, DEBUG, INFO, WARN, ERROR };
struct enum_hasher { template <typename T> std::size_t operator()(T t) const { return static_cast<std::size_t>(t); } };
const std::unordered_map<log_level, std::string, enum_hasher> uncolored
  {
    {log_level::ERROR, " [ERROR] "}, {log_level::WARN, " [WARN] "}, {log_level::INFO, " [INFO] "},
    {log_level::DEBUG, " [DEBUG] "}, {log_level::TRACE, " [TRACE] "}
  };
const std::unordered_map<log_level, std::string, enum_hasher> colored
  {
    {log_level::ERROR, " \x1b[31;1m[ERROR]\x1b[0m "}, {log_level::WARN, " \x1b[33;1m[WARN]\x1b[0m "},
    {log_level::INFO, " \x1b[32;1m[INFO]\x1b[0m "}, {log_level::DEBUG, " \x1b[34;1m[DEBUG]\x1b[0m "},
    {log_level::TRACE, " \x1b[37;1m[TRACE]\x1b[0m "}
  };

//logger base class, not pure virtual so you can use as a null logger if you want
class logger {
 public:
  logger() = delete;
  logger(const logging_config_t& config) {};
  virtual ~logger() {};
  virtual void log(const std::string&, const log_level) {};
  virtual void log(const std::string&) {};
 protected:
  std::mutex lock;
};

//logger that writes to standard out
class std_out_logger : public logger {
 public:
  std_out_logger() = delete;
  std_out_logger(const logging_config_t& config) : logger(config),levels(config.find("color") != config.end() ? colored : uncolored) {}
  virtual void log(const std::string& message, const log_level level) {
    std::string output;
    output.reserve(message.length() + 64);
    output.append(timestamp());
    output.append(levels.find(level)->second);
    output.append(message);
    output.push_back('\n');
    log(output);
  }
  virtual void log(const std::string& message) {
    //cout is thread safe, to avoid multiple threads interleaving on one line
    //though, we make sure to only call the << operator once on std::cout
    //otherwise the << operators from different threads could interleave
    //obviously we dont care if flushes interleave
    std::cout << message;
    std::cout.flush();
  }
 protected:
  const std::unordered_map<log_level, std::string, enum_hasher> levels;
};

//TODO: add log rolling
//logger that writes to file
class file_logger : public logger {
 public:
  file_logger() = delete;
  file_logger(const logging_config_t& config):logger(config) {
    //grab the file name
    auto name = config.find("file_name");
    if(name == config.end())
      throw std::runtime_error("No output file provided to file logger");
    file_name = name->second;
    
    //if we specify an interval
    reopen_interval = std::chrono::seconds(300);
    auto interval = config.find("reopen_interval");
    if(interval != config.end())
    {
      try {        
        reopen_interval = std::chrono::seconds(std::stoul(interval->second));
      }
      catch(...) {
        throw std::runtime_error(interval->second + " is not a valid reopen interval");
      }
    }
    
    //crack the file open
    reopen();
  }
  virtual void log(const std::string& message, const log_level level) {
    std::string output;
    output.reserve(message.length() + 64);
    output.append(timestamp());
    output.append(uncolored.find(level)->second);
    output.append(message);
    output.push_back('\n');
    log(output);
  }
  virtual void log(const std::string& message) {
    lock.lock();
    file << message;
    file.flush();
    lock.unlock();
    reopen();    
  }
 protected:
  void reopen() {
    //TODO: use CLOCK_MONOTONIC_COARSE
    //check if it should be closed and reopened
    auto now = std::chrono::system_clock::now();
    lock.lock();
    if(now - last_reopen > reopen_interval) {
      last_reopen = now;
      try{ file.close(); }catch(...){}
      try {
        file.open(file_name, std::ofstream::out | std::ofstream::app);
        last_reopen = std::chrono::system_clock::now();
      }
      catch(std::exception& e) {
        try{ file.close(); }catch(...){}
        throw e;
      }
    }    
    lock.unlock();
  }
  std::string file_name;
  std::ofstream file;
  std::chrono::seconds reopen_interval;
  std::chrono::system_clock::time_point last_reopen;
};


//statically get a factory
inline logger_factory& get_factory() {
  static logger_factory factory_singleton{};
  return factory_singleton;
}

//register your custom loggers here
inline bool register_logger(const std::string& name, logger_creator function_ptr) {
  auto success = get_factory().emplace(name, function_ptr);
  return success.second;
}

//get at the singleton
inline logger& get_logger(const logging_config_t& config = { {"type", "std_out"}, {"color", ""} }) {
  static std::unique_ptr<logger> singleton(get_factory().produce(config));
  return *singleton;
}

//configure the singleton (once only)
inline void configure(const logging_config_t& config) {
  get_logger(config);
}

//statically log manually without the macros below
inline void log(const std::string& message, const log_level level) {
  get_logger().log(message, level);
}

inline void log(const std::string& message) {
  get_logger().log(message);
}

const bool logger_registered =
  register_logger("", [](const logging_config_t& config){logger* l = new logger(config); return l;});
const bool std_out_logger_registered =
  register_logger("std_out", [](const logging_config_t& config){logger* l = new std_out_logger(config); return l;});
const bool file_logger_registered =
  register_logger("file", [](const logging_config_t& config){logger* l = new file_logger(config); return l;});

//guarding against redefinitions
#ifndef LOG_ERROR
#ifndef LOG_WARN
#ifndef LOG_INFO
#ifndef LOG_DEBUG
#ifndef LOG_TRACE

  //TODO: macros that include __FILE__ __LINE__ at least for error, but maybe also trace and debug

  //convenience macros stand out when reading code
  //default to seeing INFO and up if nothing was specified
  #ifndef LOGGING_LEVEL_NONE
    #ifndef LOGGING_LEVEL_ALL
      #ifndef LOGGING_LEVEL_ERROR
        #ifndef LOGGING_LEVEL_WARN
          #ifndef LOGGING_LEVEL_INFO
            #ifndef LOGGING_LEVEL_DEBUG
              #ifndef LOGGING_LEVEL_TRACE
                #define LOGGING_LEVEL_INFO
              #endif
            #endif
          #endif
        #endif
      #endif
    #endif
  #endif
  //mark all the stuff we should see
  #ifndef LOGGING_LEVEL_NONE
    #ifndef LOGGING_LEVEL_ERROR
      #define LOGGING_LEVEL_ERROR
      #ifndef LOGGING_LEVEL_WARN
        #define LOGGING_LEVEL_WARN
        #ifndef LOGGING_LEVEL_INFO
          #define LOGGING_LEVEL_INFO
          #ifndef LOGGING_LEVEL_DEBUG
            #define LOGGING_LEVEL_DEBUG
            #ifndef LOGGING_LEVEL_TRACE
              #define LOGGING_LEVEL_TRACE
            #endif
          #endif
        #endif
      #endif
    #endif
  #endif
  //no logging output
  #ifdef LOGGING_LEVEL_NONE
    #define LOG_ERROR(x)
    #define LOG_WARN(x)
    #define LOG_INFO(x)
    #define LOG_DEBUG(x)
    #define LOG_TRACE(x)
  //all logging output
  #elif defined(LOGGING_LEVEL_ALL)
    #define LOG_ERROR(x) ::logging::get_logger().log(x, ::logging::log_level::ERROR)
    #define LOG_WARN(x)  ::logging::get_logger().log(x, ::logging::log_level::WARN)
    #define LOG_INFO(x)  ::logging::get_logger().log(x, ::logging::log_level::INFO)
    #define LOG_DEBUG(x) ::logging::get_logger().log(x, ::logging::log_level::DEBUG)
    #define LOG_TRACE(x) ::logging::get_logger().log(x, ::logging::log_level::TRACE)
  //some level and up
  #else
    #ifdef LOGGING_LEVEL_ERROR
      #define LOG_ERROR(x) ::logging::get_logger().log(x, ::logging::log_level::ERROR)
    #else
      #define LOG_ERROR(x)
    #endif
    #ifdef LOGGING_LEVEL_WARN
      #define LOG_WARN(x)  ::logging::get_logger().log(x, ::logging::log_level::WARN)
    #else
      #define LOG_WARN(x)
    #endif
    #ifdef LOGGING_LEVEL_INFO
      #define LOG_INFO(x)  ::logging::get_logger().log(x, ::logging::log_level::INFO)
    #else
      #define LOG_INFO(x);
    #endif
    #ifdef LOGGING_LEVEL_DEBUG
      #define LOG_DEBUG(x) ::logging::get_logger().log(x, ::logging::log_level::DEBUG)
    #else
      #define LOG_DEBUG(x)
    #endif
    #ifdef LOGGING_LEVEL_TRACE
      #define LOG_TRACE(x) ::logging::get_logger().log(x, ::logging::log_level::TRACE)
    #else
      #define LOG_TRACE(x)
    #endif
  #endif


//done guarding
#endif
#endif
#endif
#endif
#endif

}

#endif //__LOGGING_HPP__

#ifdef TEST_LOGGING

#include <thread>
#include <future>
#include <vector>
#include <functional>

size_t work() {
  std::ostringstream s; s << "hi my name is: " << std::this_thread::get_id();
  
  for(size_t i  = 0; i < 2; ++i) {
    //std::async is pretty uninteresting unless you make things yield
    LOG_ERROR(s.str()); std::this_thread::sleep_for(std::chrono::milliseconds(10));
    LOG_WARN(s.str()); std::this_thread::sleep_for(std::chrono::milliseconds(10));
    LOG_INFO(s.str()); std::this_thread::sleep_for(std::chrono::milliseconds(10));
    LOG_DEBUG(s.str()); std::this_thread::sleep_for(std::chrono::milliseconds(10));
    LOG_TRACE(s.str()); std::this_thread::sleep_for(std::chrono::milliseconds(10));
    logging::log(logging::timestamp() + " \x1b[35;1m[CUSTOM]\x1b[0m " + s.str() + '\n'); std::this_thread::sleep_for(std::chrono::milliseconds(10));
  }
  return 10;
}

int main(void) {
  //configure logging, if you dont it defaults to standard out logging with colors
  //logging::configure({ {"type", "file"}, {"file_name", "test.log"}, {"reopen_interval", "1"} });
  
  //start up some threads
  std::vector<std::future<size_t> > results;
  for(size_t i = 0; i < 4; ++i) {
    results.emplace_back(std::async(std::launch::async, work));
  }
  
  //dont really care about the results but we can pretend
  bool exit_code = 0;
  for(auto& result : results) {
    try {
      size_t count = result.get();
    }
    catch(std::exception& e) {
      std::cout << e.what();
      exit_code++;
    }
  }
  return exit_code;
}

#endif
