use crate::MIDError;
use std::{ffi::OsStr, process::Command};

#[macro_export]
macro_rules! debug {
    ($($arg:tt)*) => {
        if cfg!(debug_assertions) {
            println!($($arg)*);
        }
    };
}

pub(crate) fn run_shell_command<S, I>(shell: S, args: I) -> Result<String, MIDError>
where
    I: IntoIterator<Item = S>,
    S: AsRef<OsStr>,
{
    let mut command = Command::new(shell);

    #[cfg(target_os = "windows")]
    {
        use std::os::windows::process::CommandExt;
        const CREATE_NO_WINDOW: u32 = 0x08000000;
        command.creation_flags(CREATE_NO_WINDOW);
    }
    command
        .args(args)
        .output()
        .map_err(MIDError::ExecuteProcessError)
        .and_then(|output| String::from_utf8(output.stdout).map_err(MIDError::ParseError))
}
