# Forked repository!
This is a forked repository from https://github.com/velbus/moduleprotocol

The upstream repository contains the protocol pdf files and this README. I just added this first section to the README.

# Velbus module protocol
This repository collects all module protocol manuals.

The development branch contains the script to parse the protocol files. If there are new modules I use the development branch to generate a new protocol.json file and copy this file manually to the master branch.
I'm not sure if this is the correct way to do, but when you include the protocol.json file in an other git repository, you don't want to include too much files so I want to keep the master branch as clean as possible.

## List of modules and their ID

| Module ID | Name | |
|:-:|:-:|---|
| 0x01 | VMB8PB | [Module protocol revision 2](protocol_vmb8pb.pdf)
| 0x02 | VMB1RY | [Module protocol revision 4](protocol_vmb1ry.pdf)
| 0x03 | VMB1BL | [Module protocol revision 4](protocol_vmb1bl.pdf)
| 0x05 | VMB6IN | [Module protocol revision 2](protocol_vmb7in.pdf)
| 0x07 | VMB1DM | [Module protocol revision 5](protocol_vmb1dm.pdf)
| 0x08 | VMB4RY | [Module protocol revision 7](protocol_vmb4ry.pdf)
| 0x09 | VMB2BL | [Module protocol revision 4](protocol_vmb2bl.pdf)
| 0x0A | VMB8IR | [Module protocol revision 3](protocol_vmb8ir.pdf)
| 0x0B | VMB4PD | [Module protocol revision 1](protocol_vmb4pd.pdf)
|      |        | [IR protocol](protocol_vmb4pd_ir.pdf)
|      |        | [IR hexcodes](protocol_vmb4pd_ir_hexcodes.pdf)
| 0x0C | VMB1TS | [Module protocol revision 5](protocol_vmb1ts.pdf)
| 0x0E | VMB1TC | [Module protocol revision 4](protocol_vmb1tc.pdf)
| 0x0F | VMB1LED | [Module protocol revision 3](protocol_vmb1led.pdf)
| 0x10 | VMB4RYLD | [Module protocol revision 5](protocol_vmb4ryld.pdf)
| 0x11 | VMB4RYNO | [Module protocol revision 5](protocol_vmb4ryno.pdf)
| 0x12 | VMB4DC | [Module protocol revision 9](protocol_vmb4dc.pdf)
| 0x13 | VMBLCDWB | [Module protocol revision 1](protocol_vmblcdwb.pdf)
| 0x14 | VMBDME | [Module protocol revision 1](protocol_vmbdme.pdf)
| 0x15 | VMBDMI | [Module protocol revision 2](protocol_vmbdmi.pdf)
| 0x16 | VMB8PBU | [Module protocol revision 7](protocol_vmb8pbu.pdf)
| 0x17 | VMB6PBN | [Module protocol revision 7](protocol_vmb6pbn.pdf)
| 0x18 | VMB2PBN | [Module protocol revision 7](protocol_vmb2pbn.pdf)
| 0x1A | VMB4RF | [Module protocol revision 4](protocol_vmb4rf.pdf)
| 0x1B | VMB1RYNO | [Module protocol revision 5](protocol_vmb1ryno.pdf)
| 0x1D | VMB2BLE | [Module protocol revision 6](protocol_vmb2ble.pdf)
| 0x1E | VMBGP1 | [Module protocol revision 2](protocol_vmbgp1_2_4.pdf)
| 0x1F | VMBGP2 | [Module protocol revision 2](protocol_vmbgp1_2_4.pdf)
| 0x20 | VMBGP4 | [Module protocol revision 2](protocol_vmbgp1_2_4.pdf)
| 0x21 | VMBGPO | [Module protocol revision 3](protocol_vmbgpo_vmbgptc.pdf)
| 0x22 | VMB7IN | [Module protocol revision 5](protocol_vmb7in.pdf)
| 0x25 | VMBGPTC | [Module protocol revision 2](protocol_vmbgpo_vmbgptc.pdf)
| 0x28 | VMBGPOD | [Module protocol revision 5](protocol_vmbgpod.pdf)
|      |         | [IR protocol](protocol_vmbgpod_ir.pdf)
|      |         | [IR hexcodes](protocol_vmbgpod_ir_hexcodes.pdf)
| 0x29 | VMB1RYNOS | [Module protocol revision 1](protocol_vmb1rynos.pdf)
| 0x2A | VMBPIRM | [Module protocol revision 1](protocol_vmbpirm.pdf)
| 0x2B | VMBPIRC | [Module protocol revision 2](protocol_vmbpirc.pdf)
| 0x2C | VMBPIRO | [Module protocol revision 2](protocol_vmbpiro.pdf)
| 0x2D | VMBGP4PIR | [Module protocol revision 2](protocol_vmbgp4pir.pdf)
| 0x2E | VMB1BLS | [Module protocol revision 3](protocol_vmb1bls.pdf)
| 0x30 | VMBRFR8S | [Module protocol revision 1](protocol_vmbrfr8s.pdf)
| 0x2F | VMBDMI-R | [Module protocol revision 4](protocol_vmbdmi_r.pdf)
| 0x31 | VMBMETEO | [Module protocol revision 3](protocol_vmbmeteo.pdf)
| 0x32 | VMB4AN | [Module protocol revision 3](protocol_vmb4an.pdf)
| 0x33 | VMBVP01 | [Module protocol revision 1](protocol_vmbvp01.pdf)
| 0x34 | VMBEL1 | [Module protocol revision 3](protocol_vmbel1_2_4.pdf)
| 0x35 | VMBEL2 | [Module protocol revision 3](protocol_vmbel1_2_4.pdf)
| 0x36 | VMBEL4 | [Module protocol revision 3](protocol_vmbel1_2_4.pdf)
| 0x37 | VMBELO | [Module protocol revision 4](protocol_vmbelo.pdf)
| 0x38 | VMBELPIR | [Module protocol revision 2](protocol_vmbelpir.pdf)
| 0x39 | VMBSIG | [Module protocol revision 3](protocol_vmbsig_vmbusbip_vmcm3.pdf)
| 0x3A | VMBGP1-2 | [Module protocol revision 2](protocol_vmbgp1_2_4_ed2.pdf)
| 0x3B | VMBGP2-2 | [Module protocol revision 2](protocol_vmbgp1_2_4_ed2.pdf)
| 0x3C | VMBGP4-2 | [Module protocol revision 2](protocol_vmbgp1_2_4_ed2.pdf)
| 0x3D | VMBGPOD-2 | [Module protocol revision 1](protocol_vmbgpod_ed2.pdf)
| 0x3E | VMBGP4PIR-2 | [Module protocol revision 1](protocol_vmbgp4pir_ed2.pdf)
| 0x3F | VMCM3 | [Module protocol revision 3](protocol_vmbsig_vmbusbip_vmcm3.pdf)
| 0x40 | VMBUSBIP | [Module protocol revision 3](protocol_vmbsig_vmbusbip_vmcm3.pdf)
| 0x41 | VMB1RYS | [Module protocol revision 1](protocol_vmb1rys.pdf)
| 0x42 | VMBKP | [Module protocol revision 1](protocol_vmbkp.pdf)

## Other manuals

* [VMB1USB revision 2](protocol_vmb1usb.pdf)
* [VMBRSUSB revision 1](protocol_vmbrsusb.pdf)
* [VMB1RS revision 2](protocol_vmb1rs.pdf)
