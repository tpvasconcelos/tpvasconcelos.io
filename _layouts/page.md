---
layout: default
---


<div class="container">
    <article class="post">

        <div class="md-articletitlesection">
            <h1 class="md-articletitle">
                {{ page.title }}
                {% if page.permalink == "/blog/"  %}
                <span id="pnp-title">$$?$$</span>
                {% endif %}
            </h1>
            <h2 class="md-articlesubtitle">{{ page.subtitle }}</h2>
        </div>

        <div class="entry">{{ content }}</div>

    </article>
</div>