# CircleNetboot

Builds of https://github.com/rsta2/circle/tree/master/sample/38-bootloader. This can be useful to test and debug builds of [Circle](https://github.com/rsta2/circle/) based firmware such as [MiniDexed](https://github.com/probonopd/MiniDexed/) during the development cycle without the need for swapping SD cards.

## Usage

* Download from [GitHub Releases](../../releases)
* Put the files into the root directory of a FAT32 formatted partition on SD/microSD card
* Put SD/microSD card into Raspberry Pi
* Attach network cable
* Boot
* Go to `http://ip_address:8080/`
* Enter a kernel image file to be uploaded (`kernel*.img`) and press the "Boot now!" button
* Alternatively: `tftp -m binary xxx.xxx.xxx.xxx -c put kernel.img`

## Credits

https://github.com/rsta2/
