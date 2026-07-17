[![Crates.io Version](https://img.shields.io/crates/v/mid)](https://crates.io/crates/mid)
[![Crates.io Total Downloads](https://img.shields.io/crates/d/mid?style=flat&color=white)](https://crates.io/crates/mid)
[![docs.rs](https://img.shields.io/docsrs/mid?style=flat&color=orange)](https://docs.rs/mid)

**Сделано с ❤️ для [Tauri](https://tauri.app)**

# mid

Создание хэша идентификатора устройства для MacOS/Windows/Linux.

Используются максимально статичные параметры системы, которые позволяют генерировать надежные хеши устройств для лицензирования ваших программ.

## История изменений

**v4.0.0** - 2 октября, 2025

> [!IMPORTANT]
> `Provisioning UDID` был [исключён](https://github.com/doroved/mid/blob/d6504fe6e10150cd40dbe246ea72058997fbe55b/src/macos.rs#L24) из набора данных для создания хеша mac-устройств. Это произошло потому, что при запуске приложения на MacOS Arm через Rosetta 2, значение `Provisioning UDID` становится равным Hardware UUID, вместо того чтобы быть уникальным. Используйте эту версию только для новых проектов или обновите хеши устройств ваших текущих пользователей.

Запустите `bash ./test_rosetta.sh` на ветке check_rosetta для тестирования.

**v3.0.7** - Август 4, 2025
- Исправлена опечатка в названии функции `run_shell_comand` для Linux и Windows

**v3.0.6** - Август 4, 2025
- Добавлен `chip_short` в `mid::additional_data`, который содержит короткое название процессора.
```
Example:
chip -> Apple M1 Pro || intel(r) core(tm) i7-4750hq cpu @ 2.00ghz
chip_short -> m1 pro || Intel
```

**v3.0.4** - Август 3, 2025
- Изменена функция определения имени операционной системы

**v3.0.3** - 17 июля, 2025
- В `mid::additional_data` добавлен model_name

**v3.0.2** - 3 мая, 2025

> [!NOTE]
> Присоединяйтесь к обсуждению данной [дисскуссии](https://github.com/doroved/mid/discussions/5)

- Добавлена фича `serde`
- Добавлены аттрибуты `PartialEq`, `Eq`, ``Clone` для всех структур

**v3.0.0** - 18 сентября, 2024

> [!IMPORTANT]
> `Platform ID` был удален из набора данных для создания хеша mac устройств, т.к. после обновления с macos 14.x до 15.0, он [изменился](https://github.com/doroved/mid/blob/d2587cc51f5bf406df7f84ba420e84942b022e23/src/macos.rs#L25), что привело к изменению хеша устройства. Используйте эту версию только для новых проектов или обновите хеши устройств ваших текущих пользоватей.

**v2.1.0** - 30 июня, 2024

- Добавлена функция `mid::additional_data`, которая возвращает дополнительные данные об устройстве, которые не участвуют в формировании хеша устройства. На текущий момент доступно только для MacOS.

**v2.0.0** - 24 марта, 2024

- Вернул `to_lowercase()` для Windows MID result, который по ошибке был убран в v1.1.3. **Это изменит текущие хеши Windows устройств!** При необходимости, используйте версию 2.0.0 только для новых проектов или попросите пользователей перепривязать лицензию на новые хеши в текущем проекте.
- Добавлена функция `mid::data`, которая возвращает структуру данных: key, result, hash.
- `mid::print` выводит данные в консоль только в режиме отладки, они не попадут в релизную сборку проекта.
- В Linux используются 3 источника получения **machine-id**.
- Секретный ключ для хеширования не может быть пустым.
- Проведен полный рефакторинг кода.

---

Список параметров, которые используются на каждой из платформ.

## MacOS

```bash
system_profiler SPHardwareDataType
```

[Команда](https://ss64.com/osx/system_profiler.html) возвращает информацию о аппаратных характеристиках компьютера. Используемые параметры:

- **Model Number**: Этот параметр представляет собой номер модели компьютера или устройства. Он используется для уникальной идентификации конкретной модели в рамках производителя.

- **Serial Number**: Этот параметр является уникальным серийным номером компьютера или устройства. Он используется для идентификации конкретной единицы в рамках определенной модели.

- **Hardware UUID**: Этот параметр представляет уникальный идентификатор аппаратного обеспечения (UUID) компьютера или устройства. Он служит для обеспечения уникальной идентификации конкретной единицы в различных системах и средах.

- ~~**Provisioning UDID**: Этот параметр представляет уникальный идентификатор устройства (UDID), который может использоваться в процессе предоставления или настройки устройства, обычно в корпоративной или управляемой среде.~~

```bash
system_profiler SPSecureElementDataType
```

Команда возвращает информацию о безопасном элементе (Secure Element). Этот элемент используется для хранения зашифрованных данных, таких как информация о платежных картах и другие конфиденциальные данные. Используемые параметры:

- ~~**Platform ID**: Уникальный идентификатор платформы, к которой относится Secure Element (безопасный элемент).~~
- **SEID**: Уникальный идентификатор безопасного элемента (Secure Element ID). Создается при прошивки NFC чипа на заводе производителя.

## Windows

[PowerShell](https://ru.wikipedia.org/wiki/PowerShell) - расширяемое средство автоматизации. Используемые параметры:

- `powershell -command "Get-WmiObject Win32_ComputerSystemProduct"`: Возвращает уникальный идентификатор (UUID) продукта компьютера. Обычно связан с материнской платой компьютера. В редких случаях он может измениться после замены или переустановки материнской платы или после изменения BIOS/UEFI на устройстве.

- `powershell -command "Get-WmiObject Win32_BIOS"`: Возвращает серийный номер BIOS компьютера. Обычно остается постоянным и не подлежит изменению.

- `powershell -command "Get-WmiObject Win32_BaseBoard"`: Возвращает серийный номер базовой платы компьютера. Обычно остается постоянным и не подлежит изменению.

- `powershell -command "Get-WmiObject Win32_Processor"`: Возвращает идентификатор процессора компьютера. Должен оставаться неизменным, за исключением случаев замены процессора.

## Linux

- [machine-id](https://man7.org/linux/man-pages/man5/machine-id.5.html): Идентификатор (ID) машины, который используется для уникальной идентификации компьютера в Linux системах.

> **К сожалению этот параметр подвержен изменению со стороны пользователя и пока не найдено надежного решения для Linux.**.

## Как установить

Добавить зависимость в Cargo.toml

```toml
[dependencies]
mid = "4.0.0"
```

Или установить с помощью Cargo CLI

```bash
cargo add mid
```

## Как использовать

### Получить хеш устройства

```rust
let machine_id = mid::get("mySecretKey").unwrap();
```

```
Пример: 3f9af06fd78d3390ef35e059623f58af03b7f6ca91690f5af031b774fd541977
```

### Получить данные MID key/result/hash

```rust
let mid_data = mid::data("mySecretKey").unwrap();
```

```
MacOS пример: MidData { key: "mySecretKey", result: ["ModelNumber", "SerialNumber", "HardwareUUID", "SEID"], hash: "3f9af06fd78d3390ef35e059623f58af03b7f6ca91690f5af031b774fd541977" }
```

### Вывести в консоль MID key/result/hash в режиме `debug_assertions`

```rust
mid::print("mySecretKey");
```

```
MacOS пример:
MID.print[key]: mySecretKey
MID.print[result]: ["ModelNumber", "SerialNumber", "HardwareUUID", "SEID"]
MID.print[hash]: 3f9af06fd78d3390ef35e059623f58af03b7f6ca91690f5af031b774fd541977
```

- `MID key` - Секретный ключ для хэширования
- `MID result` - Массив параметров OS
- `MID hash` - Хеш SHA-256 от result

### Получить дополнительные данные об устройстве

Эти данные не участвуют в формировании хеша устройства. На текущий момент доступно только для `MacOS`.

```rust
let additional_data = mid::additional_data().unwrap();
println!("{:?}", additional_data);
```

```
AdditionalData { username: "doroved", hostname: "MacBook-Pro--doroved.local", model_name: "MacBook Pro", os_name: "Sequoia", os_version: "15.7", os_full: "Sequoia 15.7", chip: "Apple M1 Pro", chip_short: "m1 pro", memsize: 16, cpu_core_count: 8, languages: ["ru-RU", "bg-RU", "en-RU"] }
```

## Подписывайтесь на мой Х

Здесь я буду делиться своими разработками и проектами
https://x.com/doroved

## Ссылки

- [machineid-rs](https://github.com/Taptiive/machineid-rs)
- [machine_uuid](https://github.com/choicesourcing/machine_uuid)
- [rust-machine-id](https://github.com/mathstuf/rust-machine-id)
- [app-machine-id](https://github.com/d-k-bo/app-machine-id)
