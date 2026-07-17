//! Creating a Machine ID hash for MacOS/Windows/Linux.
//!
//! ```
//! let machine_id = mid::get("mySecretKey").unwrap();
//! ```

mod errors;
mod linux;
mod macos;
mod other;
mod utils;
mod windows;

use errors::MIDError;
use hmac_sha256::HMAC;
#[cfg(feature = "serde")]
use serde::{Deserialize, Serialize};

#[cfg(target_os = "linux")]
use linux::get_mid_result;
#[cfg(target_os = "macos")]
use macos::{get_additional_data, get_mid_result};
#[cfg(target_os = "windows")]
use windows::get_mid_result;
#[cfg(not(any(target_os = "linux", target_os = "macos", target_os = "windows")))]
use other::get_mid_result;

#[derive(Debug, PartialEq, Eq, Clone)]
#[cfg_attr(feature = "serde", derive(Serialize, Deserialize))]
pub struct MidData {
    pub key: String,
    pub result: Vec<String>,
    pub hash: String,
}

#[derive(Debug, PartialEq, Eq, Clone)]
#[cfg_attr(feature = "serde", derive(Serialize, Deserialize))]
#[cfg(target_os = "macos")]
pub struct AdditionalData {
    pub username: String,
    pub hostname: String,
    pub model_name: String,
    pub os_name: String,
    pub os_version: String,
    pub os_full: String,
    pub chip: String,
    pub chip_short: String,
    pub memsize: u8,
    pub cpu_core_count: u8,
    pub languages: Vec<String>,
}

/// Gets unique platform metrics and returns a `Result`, which can be a MID hash (SHA-256) or a `MIDError`.
///
/// # Errors
///
/// Returns [`Err`] if an error occurred while creating the MachineID.
///
/// # Example
///
/// ```
/// fn get_machine_id() -> Result<String, String> {
///   match mid::get("mySecretKey") {
///       Ok(mid) => Ok(mid),
///       Err(err) => {
///           println!("MID error: {}", err.to_string());
///           Err(err.to_string())
///       }
///   }
/// }
/// ```
pub fn get(key: &str) -> Result<String, MIDError> {
    match data(key) {
        Ok(mid) => Ok(mid.hash),
        Err(err) => Err(err),
    }
}

/// Returns MID key/result/hash as [`MidData`]
///
/// # Errors
///
/// Returns [`Err`] if an error occurred while creating the MachineID.
///
/// # Example
///
/// ```
/// let mid_data = mid::data("mySecretKey").unwrap();
/// ```
pub fn data(key: &str) -> Result<MidData, MIDError> {
    if key.is_empty() {
        return Err(MIDError::EmptyMidKey);
    }

    match get_mid_result() {
        Ok(mid) => {
            let mid_result: Vec<String> = mid.split('|').map(|s| s.to_string()).collect();

            let hmac_result = HMAC::mac(mid.as_bytes(), key.as_bytes());
            let mid_hash = hex::encode(hmac_result);

            Ok(MidData {
                key: String::from(key),
                result: mid_result,
                hash: mid_hash,
            })
        }
        Err(err) => Err(err),
    }
}

/// Returns additional device data that is not involved in generating the device hash as [`AdditionalData`]
///
/// # Errors
///
/// Returns [`Err`] if an error occurred while retrieving additional data.
///
/// # Example
///
/// ```
/// let additional_data = mid::additional_data().unwrap();
/// println!("Username: {}", additional_data.username);
/// println!("Hostname: {}", additional_data.hostname);
/// println!("Model Name: {}", additional_data.model_name);
/// println!("OS Name: {}", additional_data.os_name);
/// println!("OS Version: {}", additional_data.os_version);
/// println!("OS Full: {}", additional_data.os_full);
/// println!("Chip: {}", additional_data.chip);
/// println!("Chip Short: {}", additional_data.chip_short);
/// println!("Memory Size: {}", additional_data.memsize);
/// println!("CPU Core Count: {}", additional_data.cpu_core_count);
/// println!("Languages: {:?}", additional_data.languages);
/// ```
#[cfg(target_os = "macos")]
pub fn additional_data() -> Result<AdditionalData, MIDError> {
    get_additional_data()
}

/// Output the MID key/result/hash to the console in `debug_assertions` mode.
///
/// `MID key` - The secret key for hashing
///
/// `MID result` - Array of OS parameters
///
/// `MID hash` - SHA-256 hash from result
///
/// # Example
///
/// ```
/// mid::print("mySecretKey");
/// ```
pub fn print(key: &str) {
    match data(key) {
        Ok(mid) => {
            debug!("MID.print[key]: {}", mid.key);
            debug!("MID.print[result]: {:?}", mid.result);
            debug!("MID.print[hash]: {}", mid.hash);
        }
        Err(err) => debug!("MID.print[error]: {}", err),
    }
}

#[test]
fn test_mid_operations() {
    match get("mykey") {
        Ok(mid) => debug!("MID.get: {}\n", mid),
        Err(err) => debug!("MID.get[error]: {}\n", err),
    }

    match data("mykey") {
        Ok(log_data) => debug!("MID.data: {:?}\n", log_data),
        Err(err) => debug!("MID.data[error]: {}\n", err),
    }

    #[cfg(target_os = "macos")]
    match additional_data() {
        Ok(log_data) => debug!("MID.additional_data: {:?}\n", log_data),
        Err(err) => debug!("MID.additional_data[error]: {}\n", err),
    }

    print("mykey");
}
