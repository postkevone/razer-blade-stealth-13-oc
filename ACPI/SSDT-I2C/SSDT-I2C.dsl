/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL9wbMK0.aml, Wed Dec 13 15:12:10 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000143 (323)
 *     Revision         0x02
 *     Checksum         0x43
 *     OEM ID           "tyler"
 *     OEM Table ID     "I2CxConf"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "tyler", "I2CxConf", 0x00000000)
{
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)

    Scope (_SB.PCI0.I2C0)
    {
        Method (PKG3, 3, Serialized)
        {
            Name (PKG, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            PKG [Zero] = Arg0
            PKG [One] = Arg1
            PKG [0x02] = Arg2
            Return (PKG) /* \_SB_.PCI0.I2C0.PKG3.PKG_ */
        }

        Method (SSCN, 0, NotSerialized)
        {
            Return (PKG3 (0x0210, 0x0280, 0x1E))
        }

        Method (FMCN, 0, NotSerialized)
        {
            Return (PKG3 (0x80, 0xA0, 0x1E))
        }

        Method (FPCN, 0, NotSerialized)
        {
            Return (PKG3 (0x30, 0x40, 0x1E))
        }
    }

    Scope (_SB.PCI0.I2C1)
    {
        Method (PKG3, 3, Serialized)
        {
            Name (PKG, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            PKG [Zero] = Arg0
            PKG [One] = Arg1
            PKG [0x02] = Arg2
            Return (PKG) /* \_SB_.PCI0.I2C1.PKG3.PKG_ */
        }

        Method (SSCN, 0, NotSerialized)
        {
            Return (PKG3 (0x0210, 0x0280, 0x1E))
        }

        Method (FMCN, 0, NotSerialized)
        {
            Return (PKG3 (0x80, 0xA0, 0x1E))
        }

        Method (FPCN, 0, NotSerialized)
        {
            Return (PKG3 (0x30, 0x40, 0x1E))
        }
    }
}

