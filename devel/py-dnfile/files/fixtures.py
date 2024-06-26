from pathlib import Path

CD = Path(__file__).parent
DATA = CD / "data"


def get_data_path_by_name(name):
    if name == "hello-world.exe":
        return DATA / "hello-world" / "hello-world.exe"
    elif name == "ModuleCode_x86.exe":
        return DATA / "mixed-mode" / "ModuleCode" / "bin" / "ModuleCode_x86.exe"
    elif name == "EmptyClass_x86.exe":
        return DATA / "mixed-mode" / "EmptyClass" / "bin" / "EmptyClass_x86.exe"
    elif name == "EmptyClass_amd64.exe":
        return DATA / "mixed-mode" / "EmptyClass" / "bin" / "EmptyClass_amd64.exe"

    raise ValueError("unknown test file")
