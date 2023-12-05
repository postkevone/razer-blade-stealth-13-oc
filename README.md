# Razer Blade Stealth 13 (2020) RZ09-03102
![Static Badge](https://img.shields.io/badge/0.9.6-blue?label=OpenCore)
![Static Badge](https://img.shields.io/badge/Monterey-blueviolet?label=MacOS)

### Specifications

|Category|Specification|
|---|---|
|CPU|i7-1065G7|
|GPU|GTX 1650 Ti Max-Q 4 GB|
|RAM|16GB LPDDR4X 3733 MHz|
|NVMe|SOLIDIGM P44 PRO 1TB|
|Display|13.3" FHD 120Hz|
|Wifi|Intel AX201|

## What does not work

- [Limitation of AirportItlwm.kext](https://openintelwireless.github.io/itlwm/FAQ.html#limitation-of-airportitlwm-kext)
- Discrete GPU (disabled)
- Internal microphone

## Not tested

- Thunderbolt 3
- External display

<details>  
<summary>BIOS</summary>
<br>

|Firmware|Version|
|---|---|
|System BIOS|1.04|
|EC FW|1.01|
|MCU FW|1.00.00.00|

- `Advanced`
    - `Thunderbolt(TM) Configuration`
        - `Security Level`: No Security
- `Chipset`
    - `SATA And RST Configuration`
        - `SATA Mode Selection`: AHCI
- `Security`
    - `Secure Boot`
        - `Secure Boot`: Disabled
- `Boot`
    - `Fast Boot`: Disabled
- `Boot`
    - `CSM Configuration`
        - `CSM Support`: Disabled

</details>

<details>  
<summary>ACPI Patches</summary>
<br>

- `SSDT-AWAC`: Fix the system clocks.
- `SSDT-DDGPU`: Disable the discrete GPU.
- `SSDT-EC-USBX`: Create a simple "fake" EC device and fix USB power.
- `SSDT-PLUG`: Allow the kernel's XCPM(XNU's CPU Power Management) to manage our CPU's power management.
- `SSDT-PNLF`: Create a PNLF device with a hardware ID of APP0002 to fix backlight.
- `SSDT-RHUB`: Turn off the RHUB device and force macOS to manually rebuild the USB ports.
- `SSDT-TPAD`: Enable I2C touchpad by returning zero in the _STA method of TPD0.
- `SSDT-XOSI`: Enable I2C devices such as trackpads.

</details>