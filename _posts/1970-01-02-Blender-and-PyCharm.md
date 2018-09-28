---
layout: post
title: "PNP post: Blender and PyCharm"
subtitle: Integrate blender's package bpy with Pycharm by adding code completion, type-checking, and the rest...
permalink: /Blender_and_PyCharm/
category: Blender
tag: [blender, PyCharm, python, IDE]
---


1. Download python
[pre-definition generator](https://github.com/mutantbob/pycharm-blender/blob/master/python_api/pypredef_gen.py)
by [mutantbob](https://github.com/mutantbob/pycharm-blender).

2. Generate the skeletons: The set of skeletons will be saved in `./pypredef`

```sh
blender -b -P pypredef_gen.py
```

3. Open `PyCharm -> Preferences -> Project Interpreter`.

4. Under **Project Interpreter** drop down menu, click **Show All**.

5. Select your desired interpreter and then click **Show paths for the selected interpreter**.

6. Click on the plus button `+` and add the `pypredef` directory to it.
