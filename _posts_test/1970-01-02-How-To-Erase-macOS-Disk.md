---
layout: post
title: "PNP post: Guide to erasing macOS's disk"
subtitle: "A guide to Disk Utility's Erase tool (with references)."
permalink: /How_To_Erase_macOS_Disk/
category: macOS
tag: [macOS, security]

images:

  - url: /assets/images/posts/macOS-sierra-recovery-mode.png
    alt: macOS sierra recovery mode utilities window
    title: macOS sierra recovery mode utilities window
    caption:

  - url: /assets/images/posts/Disk_Utility_Erase.png
    alt: Disk Utility Erase tool
    title: Disk Utility Erase tool
    caption:

---



# The basics

1. Shut down your machine.

2. **Boot to Recovery OS** - Right after turning on or restarting your machine, hold down the keys ```cmd(⌘)+R``` until you see Apple's logo. Once the boot has finished, you should see this utilities window.

    {% assign image = page.images[0] %}
    {% include image.html image=image %}


3. Open **Disk Utility**.

4. Select the disk or volume you want to erase.

5. Use the **Erase** tool on the tool bar.

    {% assign image = page.images[1] %}
    {% include image.html image=image %}


# How to use the Erase tool


**Note:** _Solid-State-drives (SSDs) have a limited number of writes before they fail. This is the reason why secure erase options are not available in Disk Utility for SSDs. Apple's suggestion is to use FileVault encryption when using a SSD._

1. Choose the **Name**.

2. Choose the **Format**:

    - **Mac OS Extended (Journaled)**: Uses the Mac format (Journaled [HFS+](https://en.wikipedia.org/wiki/HFS_Plus)) to protect the integrity of the hierarchical file system.

    - **Encrypted**: Uses the Mac format, requires a password, and encrypts the partition. **Recommended!**

    - **Case-sensitive**: Uses the Mac format and is case sensitive to folder names. For example, folders named “Homework” and “HOMEWORK” are two different folders. **Not recommended!**
    
    - **MS-DOS (FAT)**: Use for Windows volumes that are 32 GB or less.

    - **ExFAT**: Use for Windows volumes that are over 32 GB.

3. Choose the **Scheme**:
    
    - **GUID Partition Map:** To startup an Intel-based Mac. Or for a non-startup disk (for macOS 10.4 or later)
    
    - **Apple Partition Map:** To startup a PowerPC-based Mac. Or for a non-startup disk (for any Mac)
    
    - **Master Boot Record:** To startup a DOS or Windows computer. Or for devices that require DOS-compatible or Windows compatible partition.
  
4. Choose you **Security Options**:

    - Choose how many times you want the system to overwrite your drive or volume.

    - Even the most secure method provided by Disk Utility (overwriting the disk seven times with random data) is not approved by the [NSA](https://www.nsa.gov/). Read the NSA's [Storage Device Declassification Manual](https://www.nsa.gov/resources/everyone/media-destruction/assets/files/storage-device-declassification-manual.pdf) for more information.
    
    - The are other less extreme [Overwriting Standards](https://en.wikipedia.org/wiki/Data_erasure#Standards) approved by Government agencies that do not require physical destruction of the storage device. 

5. Click _Erase_... wait... click _Done_, and exit from Disk Utility!



# Useful links

- [Disk Utility for Mac: Erase a volume using Disk Utility](https://support.apple.com/kb/PH22241?locale=en_GB), Apple support

- More on [Partitioning schemes](https://en.wikipedia.org/wiki/Disk_partitioning#Partitioning_schemes)