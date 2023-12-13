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
- Sleep.
    - Sleep works but the dGPU is turned on after sleep. Disable sleep completely for longer battery life: `sudo pmset disablesleep 1`.

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
- `SSDT-dGPU-Off`: Disable the discrete GPU.
- `SSDT-EC-USBX`: Create a simple "fake" EC device and fix USB power.
- `SSDT-HPET`: Fix IRQ conflicts.
- `SSDT-I2C`: [Methods for I2C touchpad](https://github.com/jman985/Razer-Blade-Stealth-13--Early-2020--Hackintosh).
- `SSDT-PLUG`: Allow the kernel's XCPM(XNU's CPU Power Management) to manage CPU's power management.
- `SSDT-PNLF`: Create a PNLF device with a hardware ID of APP0002 to fix backlight.
- `SSDT-RHUB`: Turn off the RHUB device and force macOS to manually rebuild the USB ports.
- `SSDT-SBUS-MCHC`: [Fix SMBus support](https://github.com/jman985/Razer-Blade-Stealth-13--Early-2020--Hackintosh).
- `SSDT-TPXX`: [Methods for I2C touchpad](https://github.com/jman985/Razer-Blade-Stealth-13--Early-2020--Hackintosh).
- `SSDT-XOSI`: Enable I2C devices such as trackpads.

</details>

<details>  
<summary>Framebuffer Test</summary>
<br>

|Framebuffer|Connectors|Notes|
|---|---|---
|000005FF|3|Panic after sleep.|
|0000718A|6|Black screen after sleep.|
|0000708A|6|Boot error.|
|0000518A|6|Black screen after sleep.|
|00005C8A|6|Black screen after sleep.|
|00005D8A|6|Black screen after sleep.|
|0000528A|6|Black screen after sleep (Dortania).|
|0000538A|6|Black screen after sleep.|
|00005A8A|6|Black screen after sleep.|
|00005B8A|6|Black screen after sleep.|
|0100718A|5|Sleep working (need to open lid twice).|
|0100A780|5|Boot error.|
|0100518A|3|Sleep working (need to open lid twice).|
|01005C8A|3|Sleep working (need to open lid twice).<br>(Recommended)|
|01005D8A|3|Sleep working (need to open lid twice).|
|0100528A|5|Black screen after boot.|
|0100538A|5|Black screen after boot.|
|01005A8A|5|Black screen after boot.|
|01005B8A|5|Black screen after boot.|
|0200518A|3|Cursor glitch, panic after sleep.|
|02005C8A|3|Cursor glitch, sleep working (need to open lid twice).|
|0200528A|5|Black screen after boot,|
|0200538A|5|Black screen after boot.|

</details>

<details>  
<summary>Device Properties</summary>
<br>

|Path|Setting|Value|Note|
|---|---|---|---|
|PciRoot(0x0)/Pci(0x2,0x0)|AAPL,GfxYTile|01000000|Fix glitches.|
||AAPL,ig-platform-id|01005C8A|Recommended value.|
||device-id|5C8A0010|Recommended value.|
||enable-backlight-registers-fix|1|Fix backlight registers on KBL, CFL and ICL platforms.|
||enable-backlight-smoother|1|Make brightness transitions smoother.|
||enable-cdclk-frequency-fix|1|Support all valid Core Display Clock (CDCLK) frequencies on ICL platforms.|
||enable-dbuf-early-optimizer|1|Fix the Display Data Buffer (DBUF) issues on ICL+ platforms.|
||enable-dvmt-calc-fix|1|Fix the kernel panic caused by an incorrectly calculated amount of DVMT pre-allocated memory on Intel ICL platforms.|
||framebuffer-patch-enable|1|In some cases where you cannot set the DVMT-prealloc of these cards to 256MB higher in your UEFI Setup, you may get a kernel panic. Usually they're configured for 32MB of DVMT-prealloc, in that case these values are added to your iGPU Properties.|
||framebuffer-fbmem|00009000|Same as above.|
||framebuffer-stolenmem|00003001|Same as above.|
|PciRoot(0x0)/Pci(0x1f,0x3)|layout-id|10000000|Layout for AppleALC.|

</details>

<details>  
<summary>Kexts</summary>
<br>

</details>