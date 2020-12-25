---
layout: post
title: "PNP post: Installing rEFInd"
subtitle: "Step-by-step rEFInd installation with useful references."
permalink: /rEFInd_Installation/
category: rEFInd
tag: [macOS, EFI, rEFInd, dual-boot, partition, linux, ubuntu]
---


## 1. Download rEFInd

[Download rEFInd](https://sourceforge.net/projects/refind/) from sourceforge. You should have a ```refind-bin-V.XX.X.zip``` saved in your `~/Downloads` directory or somewhere else in your machine.


## 2. Disable SIP

For macOS El Capitan or latter, macOS's System Integrity Protection (SIP)
prevents the installation of rEFInd.
[How to disable SIP](/macOS/Disable_System_Integrity_Protection/)



## 3. Mount the ESP

```cd``` into ```refind-bin-V.XX.X``` run the ```mountesp``` script:

```sh
cd /Users/tomasvasconcelos1/Downloads/refind-bin-0.10.4
sudo ./mountesp
```

The output should tell you where the ESP is mounted:

```sh
Warning: root device could not be found
The ESP has been identified as /dev/disk0s1; attempting to mount it....
The ESP is mounted at /Volumes/ESP
```



## 4. Create a directory for rEFInd

```sh
sudo mkdir -p /Volumes/ESP/EFI/refind
```

Or, if you want to place it on the macOS's root partition:

```sh
sudo mkdir -p /EFI/refind
```


## 5. Copy files

Copy the files into the directory you have just created:

```bash
sudo cp -r refind/* /Volumes/ESP/EFI/refind/
```


## 6. Remove unwanted files

For a Mac with 64-bit EFI, you want to remove all the files and drivers
that won't be used, which will speed up booting. Apply the changes and
do the same for a 32-bit EFI. Read more on
[using EFI drivers](http://www.rodsbooks.com/refind/drivers.html).

```sh
sudo rm /Volumes/ESP/EFI/refind/refind_ia32.efi /Volumes/ESP/EFI/refind/refind_aa64.efi
sudo rm -rf /Volumes/ESP/EFI/refind/drivers_ia32 /Volumes/ESP/EFI/refind/drivers_aa64
```



## 7. Rename the sample configuration file

You have to rename the ```refind.conf-sample``` file to ```refind.conf```

```bash
sudo mv /Volumes/ESP/EFI/refind/refind.conf-sample /Volumes/ESP/EFI/refind/refind.conf
```

## 8. bless rEFInd!

If you have installed rEFInd on the ESP:
```bash
sudo bless --mount /Volumes/ESP --setBoot --file /Volumes/ESP/EFI/refind/refind_x64.efi --shortform
```

Otherwise, if you've installed rEFInd on macOS's root partition (HFS+ volume) -
```bash
sudo bless --setBoot --folder /EFI/refind --file /EFI/refind/refind_x64.efi
```


# That's it!

When you reboot, you should now see the rEFInd menu.
Just remember to **[re-enable macOS's System Integrity Protection](/macOS/Disable_System_Integrity_Protection/)!**
If you want to, you can easily [configure rEFInd](/rEFInd/Configure_rEFInd) in different useful ways.



# Useful links:

- [rEFInd](http://www.rodsbooks.com/refind/)
- [Download rEFInd](https://sourceforge.net/projects/refind/)
- [Keeping rEFInd Booting](http://www.rodsbooks.com/refind/bootcoup.html)
- [Installing rEFInd](http://www.rodsbooks.com/refind/installing.html#osx)
- [Using EFI Drivers](http://www.rodsbooks.com/refind/drivers.html)
- [EFI System Partition](https://en.wikipedia.org/wiki/EFI_system_partition)
- [HFS+ partition](https://en.wikipedia.org/wiki/HFS_Plus)