/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLPpQ8iT.aml, Wed Dec 13 15:19:15 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001F2 (498)
 *     Revision         0x02
 *     Checksum         0x9B
 *     OEM ID           "hack"
 *     OEM Table ID     "XOSI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "XOSI", 0x00001000)
{
    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x19)
            {
                "Windows", 
                "Microsoft Windows", 
                "Microsoft WindowsME: Millennium Edition", 
                "Microsoft Windows NT", 
                "Windows 2000", 
                "Windows 2001", 
                "Windows 2001.1", 
                "Windows 2001 SP1", 
                "Windows 2001 SP2", 
                "Windows 2001 SP3", 
                "Windows 2001.1 SP1", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009", 
                "Windows 2012", 
                "Windows 2013", 
                "Windows 2015", 
                "Windows 2016", 
                "Windows 2017", 
                "Windows 2017.2", 
                "Windows 2018", 
                "Windows 2018.2", 
                "Windows 2019", 
                "Windows 2020"
            }
        If (_OSI ("Darwin"))
        {
            Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}

