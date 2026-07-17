#[cfg(target_os = "macos")]
use crate::errors::MIDError;

#[cfg(target_os = "macos")]
use crate::utils::run_shell_command;

#[cfg(target_os = "macos")]
use crate::AdditionalData;

#[cfg(target_os = "macos")]
pub(crate) fn get_mid_result() -> Result<String, MIDError> {
    let system_profiler_output = run_shell_command(
        "sh",
        [
            "-c",
            r#"system_profiler SPHardwareDataType SPSecureElementDataType"#,
        ],
    )?;

    let targets = [
        "Model Number",
        "Serial Number",
        "Hardware UUID",
        // If running on macOS ARM through Rosetta, then "Provisioning UDID" == "Hardware UUID", OTHERWISE it is a unique value. Run `bash ./test_rosetta.sh` on check_rosetta branch
        // "Provisioning UDID",
        // After upgrading to macos 15 Sequoia, this changed. For example, was n5b2m00417820000, became n5b2m004c7ed0000
        // "Platform ID",
        "SEID",
    ];

    let combined_string = process_output(&system_profiler_output, &targets);

    if combined_string.is_empty() {
        return Err(MIDError::ResultMidError);
    }

    Ok(combined_string)
}

#[cfg(target_os = "macos")]
fn process_output(output_str: &str, targets: &[&str]) -> String {
    let mut result = Vec::new();

    for target in targets {
        for line in output_str.to_lowercase().lines() {
            if line.contains(&target.to_lowercase()) {
                let parts: Vec<&str> = line.split(":").collect();

                if parts.len() == 2 {
                    let value = parts[1].trim().to_string();

                    if !value.is_empty() {
                        result.push(value);
                    }
                }
            }
        }
    }

    result.join("|")
}

#[cfg(target_os = "macos")]
impl Default for AdditionalData {
    fn default() -> Self {
        Self::new()
    }
}

#[cfg(target_os = "macos")]
impl AdditionalData {
    pub fn new() -> Self {
        let sysctl_data = Self::sysctl_data().unwrap();
        let sysctl_lines: Vec<&str> = sysctl_data.trim().split('\n').collect();

        let username = sysctl_lines[0].to_string();
        let hostname = sysctl_lines[1].to_string();
        let model_name = Self::model_name().unwrap();
        let os_name = Self::os_name().unwrap();
        let os_version = sysctl_lines[2].to_string();
        let os_full = format!("{os_name} {os_version}");
        let chip = sysctl_lines[3].to_string();
        let chip_short = Self::format_chip_name(sysctl_lines[3]);
        let memsize = Self::bytes_to_gigabytes(sysctl_lines[4].parse().unwrap());
        let cpu_core_count = sysctl_lines[5].parse().unwrap();
        let languages = Self::languages().unwrap();

        Self {
            username,
            hostname,
            model_name,
            os_name,
            os_version,
            os_full,
            chip,
            chip_short,
            memsize,
            cpu_core_count,
            languages,
        }
    }

    fn sysctl_data() -> Result<String, MIDError> {
        let sysctl_output = run_shell_command(
            "sh",
            [
                "-c",
                r#"whoami && sysctl -n kern.hostname kern.osproductversion machdep.cpu.brand_string hw.memsize hw.ncpu"#,
            ],
        )?;

        Ok(sysctl_output)
    }

    fn languages() -> Result<Vec<String>, MIDError> {
        let defaults_output =
            run_shell_command("sh", ["-c", r#"defaults read -g AppleLanguages"#])?;

        let languages = Self::extract_languages(defaults_output.as_str());
        Ok(languages)
    }

    // https://support.apple.com/en-us/109033
    // The previous method of determining the operating system name does not work in macOS 26.x
    fn os_name() -> Result<String, MIDError> {
        let version = run_shell_command("sw_vers", ["-productVersion"])?;

        if version.is_empty() {
            return Ok("Unknown".to_string());
        }

        let versions = [
            ("26.", "Tahoe"),
            ("15.", "Sequoia"),
            ("14.", "Sonoma"),
            ("13.", "Ventura"),
            ("12.", "Monterey"),
            ("11.", "Big Sur"),
            ("10.15.", "Catalina"),
            ("10.14.", "Mojave"),
            ("10.13.", "High Sierra"),
            ("10.12.", "Sierra"),
        ];

        for (prefix, name) in versions {
            if version.starts_with(prefix) {
                return Ok(name.to_string());
            }
        }

        Ok("Unknown".to_string())
    }

    fn bytes_to_gigabytes(bytes: u64) -> u8 {
        (bytes / (1024 * 1024 * 1024)) as u8
    }

    fn extract_languages(input: &str) -> Vec<String> {
        let cleaned_input = input.replace(&['(', ')', ' ', '\n', '"'][..], "");
        let parts: Vec<&str> = cleaned_input.split(',').collect();

        let mut languages: Vec<String> = parts.iter().map(|s| s.to_string()).collect();
        languages.retain(|s| !s.is_empty());

        languages
    }

    fn model_name() -> Result<String, MIDError> {
        let system_profiler_output = run_shell_command(
            "sh",
            [
                "-c",
                r#"system_profiler SPHardwareDataType | grep "Model Name""#,
            ],
        )?;

        let model_name = system_profiler_output.split(":").collect::<Vec<&str>>()[1]
            .trim()
            .to_string();

        Ok(model_name)
    }

    fn format_chip_name(chip: &str) -> String {
        let chip_lower = chip.to_lowercase();

        match chip_lower.as_str() {
            c if c.contains("apple") => c.replace("apple", "").trim().to_string(),
            c if c.contains("intel") => "Intel".to_string(),
            _ => chip_lower,
        }
    }
}

#[cfg(target_os = "macos")]
pub(crate) fn get_additional_data() -> Result<AdditionalData, MIDError> {
    Ok(AdditionalData::new())
}
