[![Crates.io Version](https://img.shields.io/crates/v/mid)](https://crates.io/crates/mid)
[![Crates.io Total Downloads](https://img.shields.io/crates/d/mid?style=flat&color=white)](https://crates.io/crates/mid)
[![docs.rs](https://img.shields.io/docsrs/mid?style=flat&color=orange)](https://docs.rs/mid)

**Made with ❤️ for [Tauri](https://tauri.app)**

[README RU](./README_RU.md)

# mid

Creating a Machine ID hash for MacOS/Windows/Linux.

Utilizes the most static system parameters possible to generate reliable device hashes for licensing your software.

## Change Log

**v4.0.0** - October 2, 2025

> [!IMPORTANT]
> `Provisioning UDID` has been [removed](https://github.com/doroved/mid/blob/d6504fe6e10150cd40dbe246ea72058997fbe55b/src/macos.rs#L24) from the dataset for creating Mac device hashes. This happened because when running the application on MacOS Arm through Rosetta 2, the value of `Provisioning UDID` becomes equal to the Hardware UUID, instead of being unique. **Use this version only for new projects or update the device hashes of your current users.**

Run `bash ./test_rosetta.sh` on check_rosetta branch for testing.

**v3.0.7** - August 4, 2025
- Fixed a typo in the function name `run_shell_comand` for Linux and Windows

**v3.0.6** - August 4, 2025
- Added `chip_short` to `mid::additional_data`, which contains the short name of the processor.
```
Example:
chip -> Apple M1 Pro || intel(r) core(tm) i7-4750hq cpu @ 2.00ghz
chip_short -> m1 pro || Intel
```

**v3.0.4** - August 3, 2025
- Changed the function for determining the operating system name

**v3.0.3** - July 17, 2025
- Added `model_name` to `mid::additional_data`

**v3.0.2** - May 3, 2025

> [!NOTE]
> Join the discussion in this [discussion](https://github.com/doroved/mid/discussions/5)

- Added `serde` feature
- Added `PartialEq`, `Eq`, `Clone` attributes for all structures

**v3.0.0** - September 18, 2024

> [!IMPORTANT]
> `Platform ID` has been removed from the mac device hash dataset because after upgrading from macos 14.x to 15.0, it [changed](https://github.com/doroved/mid/blob/d2587cc51f5bf406df7f84ba420e84942b022e23/src/macos.rs#L25), causing the device hash to change. **Use this version only for new projects or update the device hashes of your current users.**

**v2.1.0** - June 30, 2024

- Added `mid::additional_data` function that returns additional device data that is not involved in forming the device hash. Currently available for MacOS only.

**v2.0.0** - March 24, 2024

- Returned `to_lowercase()` for Windows MID result, which was mistakenly removed in v1.1.3. **This will change the current Windows device hashes!** If necessary, use version 2.0.0 for new projects only, or ask users to re-bind the license for new hashes in the current project.
- Added `mid::data` function that returns data structure: key, result, hash.
- `mid::print` outputs data to the console only in debug mode, it will not be included in the release build of the project.
- Linux uses 3 sources to get **machine-id**.
- The secret key for hashing cannot be empty.
- Complete code refactoring has been performed.

---

List of parameters that are used on each platform.

## MacOS

```bash
system_profiler SPHardwareDataType
```

The [command](https://ss64.com/osx/system_profiler.html) returns information about the computer's hardware characteristics. Parameters used:

- **Model Number**: This parameter represents the computer or device model number. It is used for uniquely identifying a specific model within the manufacturer's range.

- **Serial Number**: This parameter is the unique serial number of the computer or device. It is used to identify a specific unit within a particular model.

- **Hardware UUID**: This parameter represents the hardware UUID of the computer or device. It serves to provide unique identification of a specific unit across different systems and environments.

- ~~**Provisioning UDID**: This parameter represents the device's unique device identifier (UDID), which can be used in the provisioning process or device setup, usually in a corporate or managed environment.~~

```bash
system_profiler SPSecureElementDataType
```

The command returns information about the Secure Element. This element is used to store encrypted data, such as information about payment cards and other confidential data. Parameters used:

- ~~**Platform ID**: The unique identifier of the platform to which the Secure Element belongs.~~
- **SEID**: The unique identifier of the Secure Element. Created during the NFC chip firmware at the manufacturer's factory.

## Windows

[PowerShell](https://en.wikipedia.org/wiki/PowerShell) - expandable automation tool. Parameters used:

- `powershell -command "Get-WmiObject Win32_ComputerSystemProduct"`: Returns the unique product identifier (UUID) of the computer. Usually associated with the computer's motherboard. In rare cases, it may change after replacing or reinstalling the motherboard or after changing the device's BIOS/UEFI.

- `powershell -command "Get-WmiObject Win32_BIOS"`: Returns the computer's BIOS serial number. It usually remains constant and does not change.

- `powershell -command "Get-WmiObject Win32_BaseBoard"`: Returns the serial number of the computer's baseboard. It usually remains constant and does not change.

- `powershell -command "Get-WmiObject Win32_Processor"`: Returns the computer's processor identifier. It should remain unchanged, except in cases of processor replacement.

## Linux

- [machine-id](https://man7.org/linux/man-pages/man5/machine-id.5.html): A machine identifier (ID) that is used to uniquely identify a computer on Linux systems.

> **Unfortunately this parameter is subject to user modification and no reliable solution for Linux has been found yet.**

## Installation

Add the dependency to Cargo.toml

```toml
[dependencies]
mid = "4.0.0"
```

Or install using Cargo CLI

```bash
cargo add mid
```

## How to Use

### Get machine ID hash

```rust
let machine_id = mid::get("mySecretKey").unwrap();
```

```
Example: 3f9af06fd78d3390ef35e059623f58af03b7f6ca91690f5af031b774fd541977
```

### Get MID key/result/hash data

```rust
let mid_data = mid::data("mySecretKey").unwrap();
```

```
MacOS example: MidData { key: "mySecretKey", result: ["ModelNumber", "SerialNumber", "HardwareUUID", "SEID"], hash: "3f9af06fd78d3390ef35e059623f58af03b7f6ca91690f5af031b774fd541977" }
```

### Output the MID key/result/hash to the console in `debug_assertions` mode

```rust
mid::print("mySecretKey");
```

```
MacOS example:
MID.print[key]: mySecretKey
MID.print[result]: ["ModelNumber", "SerialNumber", "HardwareUUID", "SEID"]
MID.print[hash]: 3f9af06fd78d3390ef35e059623f58af03b7f6ca91690f5af031b774fd541977
```

- `MID key` - The secret key for hashing
- `MID result` - Array of OS parameters
- `MID hash` - SHA-256 hash from result

### Get additional device data

This data does not contribute to the device hash. Currently available for `MacOS` only.

```rust
let additional_data = mid::additional_data().unwrap();
println!("{:?}", additional_data);
```

```
AdditionalData { username: "doroved", hostname: "MacBook-Pro--doroved.local", model_name: "MacBook Pro", os_name: "Sequoia", os_version: "15.7", os_full: "Sequoia 15.7", chip: "Apple M1 Pro", chip_short: "m1 pro", memsize: 16, cpu_core_count: 8, languages: ["ru-RU", "bg-RU", "en-RU"] }
```

## Subscribe to my X

Here I will share my developments and projects
https://x.com/doroved

## References

- [machineid-rs](https://github.com/Taptiive/machineid-rs)
- [machine_uuid](https://github.com/choicesourcing/machine_uuid)
- [rust-machine-id](https://github.com/mathstuf/rust-machine-id)
- [app-machine-id](https://github.com/d-k-bo/app-machine-id)
