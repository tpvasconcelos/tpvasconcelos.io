---
layout: post
title: "PNP post: Disable SIP"
subtitle: "How to disable macOS System Integrity Protection"
permalink: /Disable_System_Integrity_Protection/
category: macOS
tags: [macOS, SIP, System-Integrity-Protection, troubleshoot, fix]

images:

  - url: /assets/images/posts/macOS-sierra-recovery-mode.png
    alt: macOS sierra recovery mode utilities window
    title: macOS sierra recovery mode utilities window
    caption:

---



1. Shut down your machine.

2. **Boot to Recovery OS** - Right after turning on or restarting your machine, hold down the keys ```cmd(⌘)+R``` until you see Apple's logo. Once the boot has finished, you should see this utilities window.

    {% assign image = page.images[0] %}
    {% include image.html image=image %}

3. **Open Terminal** (go to ```Utilities -> Terminal```)

4. Run the ```csrutil``` command bellow:

    - **Disable SIP** - ```csrutil disable```

    - **Enable SIP** - ```csrutil enable```

    - **Check SIP's status** - ```csrutil status```


# Useful links

- [System Integrity Protection](https://developer.apple.com/library/content/documentation/Security/Conceptual/System_Integrity_Protection_Guide/Introduction/Introduction.html) (SIP) - Developer, Apple
