---
layout: post
title: "PNP post: 'New File' Service"
subtitle: Emulate Window's "Create New File" service on macOS. Adapted from macworld.
permalink: /New_File_Service/
category: macOS
tag: [macOS, automator, hack, trick, new-file, productivity]

images:

  - url: /assets/images/posts/automator1.png
    alt: Automator Step-1
    title: Automator Step-1
    caption:

  - url: /assets/images/posts/automator2.png
    alt: Automator Step-2
    title: Automator Step-2
    caption:

  - url: /assets/images/posts/automator3.png
    alt: Automator Step-3
    title: Automator Step-3
    caption:

  - url: /assets/images/posts/automator4.png
    alt: Automator Step-4
    title: Automator Step-4
    caption:

  - url: /assets/images/posts/automator5.png
    alt: Automator Step-5
    title: Automator Step-5
    caption:

  - url: /assets/images/posts/automator6.png
    alt: Automator Step-6
    title: Automator Step-6
    caption:

---


Based on [macworld's post](http://www.macworld.com/article/1151236/os-x/createnewfileservice.html).
{: style="text-align: center; font-size: 110%;" }


1. Open **Automator**

2. Create a "Service"

3. Select "Files or Folders" from "Service Receives Selected" drop-down menu

    {% assign image = page.images[0] %}
    {% include image.html image=image %}

4. Drag "Run AppleScript" to the work area

    {% assign image = page.images[1] %}
    {% include image.html image=image %}

5. Copy and paste the following code and click the "hammer button"

    {% assign image = page.images[2] %}
    {% include image.html image=image %}

6. Drag "Set Value of Variable" to the work area as shown bellow

    {% assign image = page.images[3] %}
    {% include image.html image=image %}

7. Create a new variable called `CurrentFolder`

8. Drag "New Text File" to the work area as shown bellow

    {% assign image = page.images[4] %}
    {% include image.html image=image %}

9. Drag your variable (`CurrentFolder`) to the Where field, as shown bellow

    {% assign image = page.images[5] %}
    {% include image.html image=image %}

10. Save your new Service and give it a name (`Create New File`)



# Test it

1. Go into the directory you want to create the file

2. Right-click one of the existing files and select `Services -> Create New File`
