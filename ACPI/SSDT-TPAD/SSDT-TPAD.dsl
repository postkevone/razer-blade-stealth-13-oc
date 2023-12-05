/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLwnYmI9.aml, Tue Dec  5 11:00:34 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000012A (298)
 *     Revision         0x02
 *     Checksum         0x18
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "TPAD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "TPAD", 0x00000000)
{
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C2.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C3.TPD0, DeviceObj)

    Scope (_SB.PCI0.I2C0.TPD0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }
    }

    Scope (_SB.PCI0.I2C1.TPD0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (One)
        }
    }

    Scope (_SB.PCI0.I2C2.TPD0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }
    }

    Scope (_SB.PCI0.I2C3.TPD0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }
    }
}

