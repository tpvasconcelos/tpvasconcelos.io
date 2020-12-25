---
layout: post
title: "PNP post: Fix damaged apps"
subtitle: Fix the annoying "App is damaged and can't be opened" message
permalink: /App_is_damaged_and_cant_be_opened/
category: macOS
tags: [macOS, app, troubleshooting, fix]

images:

  - url: /assets/images/test_posts/App_is_damaged_and_cant_be_opened.png
    alt: App is damaged and cant be opened message box
    title: No, it's not! Yes, it can! No, I shouldn't!
    caption: How to get rid of this annoying message

---


{% assign image = page.images[0] %}
{% include image.html image=image %}

1. Allow apps from anywhere.
    
    ```bash
    sudo spctl --master-disable
    ```

2. Open the "damaged" **App**.

3. Reset Gatekeeper's Security.

    ```bash
    sudo spctl --master-enable
    ```
    
4. **Done!**