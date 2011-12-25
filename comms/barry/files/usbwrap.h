///
/// \file	usbwrap.h
///		USB API wrapper
///

/*
    Copyright (C) 2005-2007, Chris Frey

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    See the GNU General Public License in the COPYING file at the
    root directory of this project for more details.
*/


#ifndef __SB_USBWRAP_H__
#define __SB_USBWRAP_H__

#include <usb.h>
#include <vector>
#include <map>
#include "error.h"

#define USBWRAP_DEFAULT_TIMEOUT	30000

namespace Barry { class Data; }

/// Namespace for the libusb-related wrapper classes.  This namespace
/// may change in the future.
namespace Usb {

/// \addtogroup exceptions
/// @{

/// Thrown on low level USB errors.
class Error : public Barry::Error
{
public:
	Error(const std::string &str) : Barry::Error(str) {}
};

/// @}

/// Typedefs used by the wrapper class, in the hope to make it
/// easier to switch from libusb stable to devel and back.
typedef struct usb_device*			DeviceIDType;
typedef struct usb_dev_handle*			DeviceHandleType;

class Match
{
private:
	struct usb_bus *m_busses;
	struct usb_device *m_dev;
	int m_vendor, m_product;
	int m_lasterror;
public:
	Match(int vendor, int product);
	~Match();

	// searches for next match, and if found, fills devid with
	// something you can pass on to DeviceDiscover, etc
	// returns true if next is found, false if no more
	bool next_device(Usb::DeviceIDType *devid);
};


class Device
{
private:
	Usb::DeviceIDType m_id;
	Usb::DeviceHandleType m_handle;

	int m_timeout;
	int m_lasterror;

public:
	Device(Usb::DeviceIDType id, int timeout = USBWRAP_DEFAULT_TIMEOUT);
	~Device();

	/////////////////////////////
	// Data access

	Usb::DeviceIDType GetID() const { return m_id; }
	Usb::DeviceHandleType GetHandle() const { return m_handle; }
	int GetLastError() const { return m_lasterror; }


	/////////////////////////////
	// Device manipulation

	bool SetConfiguration(unsigned char cfg);
	bool ClearHalt(int ep);
	bool Reset();


	/////////////////////////////
	// IO functions

	bool BulkRead(int ep, Barry::Data &data, int timeout = -1);
	bool BulkWrite(int ep, const Barry::Data &data, int timeout = -1);
	bool BulkWrite(int ep, const void *data, size_t size, int timeout = -1);
	bool InterruptRead(int ep, Barry::Data &data, int timeout = -1);
	bool InterruptWrite(int ep, const Barry::Data &data, int timeout = -1);

	void BulkDrain(int ep);
};

class Interface
{
	Device &m_dev;
	int m_iface;
public:
	Interface(Device &dev, int iface)
		: m_dev(dev), m_iface(iface)
	{
		if( usb_claim_interface(dev.GetHandle(), iface) < 0 )
			throw Error("claim interface failed");
	}

	~Interface()
	{
		usb_release_interface(m_dev.GetHandle(), m_iface);
	}
};




// Map of Endpoint numbers (not indexes) to endpoint descriptors
struct EndpointPair
{
	unsigned char read;
	unsigned char write;
	unsigned char type;

	EndpointPair() : read(0), write(0), type(0xff) {}
	bool IsTypeSet() const { return type != 0xff; }
	bool IsComplete() const { return read && write && IsTypeSet(); }
};

class EndpointDiscovery : public std::map<unsigned char, usb_endpoint_descriptor>
{
	friend class InterfaceDiscovery;

public:
	typedef std::map<unsigned char, usb_endpoint_descriptor>base_type;
	typedef std::vector<EndpointPair>			endpoint_array_type;

private:
	bool m_valid;
	endpoint_array_type m_endpoints;

	bool Discover(struct usb_interface_descriptor *interface, int epcount);

public:
	EndpointDiscovery() : m_valid(false) {}

	bool IsValid() const { return m_valid; }

	const endpoint_array_type & GetEndpointPairs() const { return m_endpoints; }
};



// Map of Interface numbers (not indexes) to interface descriptors and endpoint map
struct InterfaceDesc
{
	usb_interface_descriptor desc;
	EndpointDiscovery endpoints;
};

class InterfaceDiscovery : public std::map<int, InterfaceDesc>
{
public:
	typedef std::map<int, InterfaceDesc>			base_type;

private:
	bool m_valid;

	bool DiscoverInterface(struct usb_interface *interface);

public:
	InterfaceDiscovery() : m_valid(false) {}

	bool Discover(Usb::DeviceIDType devid, int cfgidx, int ifcount);
	bool IsValid() const { return m_valid; }
};




// Map of Config numbers (not indexes) to config descriptors and interface map
struct ConfigDesc
{
	usb_config_descriptor desc;
	InterfaceDiscovery interfaces;
};

class ConfigDiscovery : public std::map<unsigned char, ConfigDesc>
{
public:
	typedef std::map<unsigned char, ConfigDesc>		base_type;

private:
	bool m_valid;

public:
	ConfigDiscovery() : m_valid(false) {}

	bool Discover(Usb::DeviceIDType devid, int cfgcount);
	bool IsValid() const { return m_valid; }
};



// Discovers all configurations, interfaces, and endpoints for a given device
class DeviceDiscovery
{
	bool m_valid;

public:
	usb_device_descriptor desc;
	ConfigDiscovery configs;

public:
	DeviceDiscovery(Usb::DeviceIDType devid);

	bool Discover(Usb::DeviceIDType devid);
	bool IsValid() const { return m_valid; }
};

} // namespace Usb

#endif

