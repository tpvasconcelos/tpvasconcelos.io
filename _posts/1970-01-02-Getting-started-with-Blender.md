---
layout: post
title: "PNP post: Blender alias"
subtitle: "Set up blender's command-line tool"
permalink: /Getting_started_with_Blender/
category: Blender
tag: [blender, command-line, 3D, python]
---


Adapted from [Blender's manual](https://www.blender.org/manual/render/workflows/command_line.html#macos)
{: style="text-align: center; font-size: 110%;" }

Open the terminal application, go to the directory where Blender is installed, and run the executable within the app bundle, with commands like this:

```sh
cd /Applications/Blender
./blender.app/Contents/MacOS/blender
```

If you need to do this often, you can make an alias so that typing just `blender` in the terminal works.
For that you can run a command like this in the terminal (with the appropriate path).

```sh
echo "alias blender=/Applications/Blender/blender.app/Contents/MacOS/blender" >> ~/.profile
echo "alias blender=/Applications/Blender/blender.app/Contents/MacOS/blender" >> ~/.bash_profile
```

In [Blender's documentation](https://www.blender.org/manual/render/workflows/command_line.html#macos) they only state the `alias` in `~/.profile` but this is only read by "login" shells.
On the other hand, `~/.bash_profile` is read by "interactive" shells, like the one linked to Terminal.


If you then open a new Terminal window, the following command should work:

```sh
blender
```
