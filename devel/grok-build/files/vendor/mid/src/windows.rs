#[cfg(target_os = "windows")]
use crate::errors::MIDError;

#[cfg(target_os = "windows")]
use crate::utils::run_shell_command;

#[cfg(target_os = "windows")]
pub(crate) fn get_mid_result() -> Result<String, MIDError> {
    let combined_output = run_shell_command(
        "powershell",
        [
            "-WindowStyle",
            "Hidden",
            "-command",
            r#"
            $csproduct = Get-WmiObject Win32_ComputerSystemProduct | Select-Object -ExpandProperty UUID;
            $bios = Get-WmiObject Win32_BIOS | Select-Object -ExpandProperty SerialNumber;
            $baseboard = Get-WmiObject Win32_BaseBoard | Select-Object -ExpandProperty SerialNumber;
            $cpu = Get-WmiObject Win32_Processor | Select-Object -ExpandProperty ProcessorId;
            "$csproduct|$bios|$baseboard|$cpu"
            "#,
        ],
    )
    .unwrap_or(String::new());

    if combined_output.is_empty() {
        return Err(MIDError::ResultMidError);
    }

    Ok(combined_output
        .trim()
        .trim_start_matches('|')
        .trim_end_matches('|')
        .to_lowercase())
}
