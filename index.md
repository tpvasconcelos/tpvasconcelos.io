---
layout: page

title: Hello, I'm Tomás.

subtitle: Welcome to my page!

---


[Download my résumé](/assets/files/CV_TPVasconcelos.pdf) or browse this website to learn more [about me](/about/), [my education](/education/),
[my research](/research/), [my computing experience](/computing-experience/), and [my projects](/projects/).

## Get in touch

{% if site.footer-links.email %}
- <a href="mailto:{{ site.footer-links.email }}"><i class="svg-icon email"></i></a>
&nbsp;[{{ site.footer-links.email }}](mailto:{{ site.footer-links.email }})
{% endif %}

{% if site.footer-links.telephone %}
- <a href="tel:{{ site.footer-links.telephone }}"><i class="svg-icon phone"></i></a>
&nbsp;[{{ site.footer-links.telephone }}](tel:{{ site.footer-links.telephone }})
{% endif %}


{% if site.footer-links.linkedin %}
- <a href="{{ site.footer-links.linkedin }}"><i class="svg-icon linkedin"></i></a>
&nbsp;[LinkedIn]({{ site.footer-links.linkedin }})
{% endif %}

{% if site.footer-links.github %}
- <a href="{{ site.footer-links.github }}"><i class="svg-icon github"></i></a>
&nbsp;[GitHub]({{ site.footer-links.github }})
{% endif %}

{% if site.footer-links.stackoverflow %}
- <a href="{{ site.footer-links.stackoverflow }}"><i class="svg-icon stackoverflow"></i></a>
&nbsp;[Stack Overflow]({{ site.footer-links.stackoverflow }})
{% endif %}
