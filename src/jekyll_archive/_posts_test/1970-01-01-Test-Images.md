---
layout: post
title: "Test post: Images"
subtitle: "Testing image layouts and markdown rendering (edge case)"
permalink: /tests/images/
category: Tests
tags: [test, edge case]

images:

  - url: /assets/images/test_posts/Lenna.png
    alt: Lena Söderberg, by Dwight Hooker.
    title: Lenna
    caption:

---


{% assign image = page.images[0] %}
{% include image.html image=image %}


---