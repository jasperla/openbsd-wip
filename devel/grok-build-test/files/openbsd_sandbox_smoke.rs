//! OpenBSD smoke: strict profile applies unveil+pledge; workspace RW; ~/.ssh denied.
use std::path::Path;
use xai_grok_sandbox::{ProfileName, SandboxManager};

fn main() {
    let info = SandboxManager::support_info();
    println!(
        "support: platform={} supported={} details={}",
        info.platform, info.is_supported, info.details
    );
    assert!(info.is_supported);

    let ws = std::env::temp_dir().join(format!("grok-openbsd-smoke-{}", std::process::id()));
    std::fs::create_dir_all(&ws).expect("mkdir workspace");
    std::fs::write(ws.join("ok.txt"), b"pre\n").expect("pre-write");

    let mut sb = SandboxManager::new(ProfileName::Strict, &ws);
    sb.apply(&ws).expect("apply");
    assert!(sb.is_applied(), "sandbox should be applied");
    sb.install();
    assert!(xai_grok_sandbox::is_active());

    std::fs::write(ws.join("after.txt"), b"after\n").expect("write workspace after apply");
    println!("workspace write after apply: ok");

    let home = std::env::var_os("HOME")
        .map(std::path::PathBuf::from)
        .unwrap_or_default();
    let ssh = home.join(".ssh");
    match std::fs::read_dir(&ssh) {
        Ok(_) => {
            eprintln!("FAIL: was able to read_dir {}", ssh.display());
            std::process::exit(2);
        }
        Err(e) => println!("~/.ssh denied as expected: {e}"),
    }

    // unveil "x" is execve(2) only. After the ancestor-"x" fix, a random
    // executable outside EXEC_DIRS / workspace must not be executable.
    let exotic = Path::new("/usr/games/fortune");
    if exotic.is_file() {
        match std::process::Command::new(exotic).output() {
            Ok(_) => {
                eprintln!("FAIL: execve {} succeeded (unveil x too broad)", exotic.display());
                std::process::exit(3);
            }
            Err(e) => println!("exec {} denied as expected: {e}", exotic.display()),
        }
    }

    println!("openbsd_sandbox_smoke: PASS");
}
