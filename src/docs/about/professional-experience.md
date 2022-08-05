---
title: Professional Experience
description: About my professional experience.
hide:
  - footer
---

# Professional experience

[Take a look at my LinkedIn profile! :fontawesome-brands-linkedin:](https://www.linkedin.com/in/tpvasconcelos/){: .md-button .md-button--primary }

## Beat <span style="color: gray; font-size: 16px; font-weight: normal;">(1yr 3mos)</span>

<div class="grid cards grid-professional-experience" markdown>
- 👨🏽‍🏭 Machine Learning Software Engineer
- 🇳🇱 Amsterdam, NL
- 🗓️ Jun 2021 - Jul 2022
</div>

[Beat](http://thebeat.co/) is the fastest-growing ride-hailing service in Latin America. My mission was to
enable and accelerate Beat’s sustainable growth by developing and applying Data Science and Machine Learning
solutions to detect and prevent fraudulent actions, reduce financial losses and abuses, and ensure a safe
environment for all users of our platform. All of this while keeping the business metrics healthy and the
company growing!

## Tiqets <span style="color: gray; font-size: 16px; font-weight: normal;">(2yrs 5mos)</span>

<div class="grid cards grid-professional-experience" markdown>
- 👨🏽‍🏭 Machine Learning Engineer
- 🇳🇱 Amsterdam, NL
- 🗓️ Jan 2019 - May 2021
</div>

As a Machine Learning Engineer, I was part of [Tiqets](https://www.tiqets.com/en/)' core Data Team. I worked
closely with data and business analysts, data engineers, as well as product owners and management team. I
applied software development, data analytics, and machine learning to scale and operationalise statistical
models and make the whole organisation more data-driven.

#### 📈 Time Series Forecasting

Operationalised and automated sales forecasting at Tiqets by deploying a generalised ML workflow to run
pre-processing, model selection, evaluation, and periodic updating of forecasted values for multiple and
varying business contexts. Each task was distributed across an array
of [Celery](https://github.com/celery/celery) workers deployed on our Kubernetes cluster. Forecasted values
and model metadata was pushed to [our DWH](https://aws.amazon.com/redshift/) and visualised by business
stakeholders using our [BI tool](https://looker.com/). We used [DataDog](https://www.datadoghq.com/)for both
application and infrastructure monitoring. For the most
part, [LSTM](https://en.wikipedia.org/wiki/Long_short-term_memory) neural networks did not yield better
results than classical approaches such as ARIMA and Exponential Smoothing, while an
optimised [Prophet](https://facebook.github.io/prophet/) model performed best for our type of data

**Technologies:** Kubernetes, ECR, S3, Redshift, SQLAlchemy, Alembic, DataDog, Celery, Redis, Dynaconf,
FBProphet, mypy, pytests, scikit-learn, sphinx, statsmodels, pandas, numpy

#### 🎥 Recommender System

Improved recommendations across our platform by taking user-preference and item-similarity into account.
Also, enriched popularity-based heuristics for [cold-start](https://recsyswiki.com/wiki/Cold-start_problem)
instances by taking distance and recency into account. A curated version of
an [Amazon Personalize](https://aws.amazon.com/personalize/) model now powers a great part of recommendations
at Tiqets. To help the Data Team iterate faster and with greater confidence on new versions of the recommender
models, we also implemented
a [time-dependent offline evaluation](http://adrem.uantwerpen.be/bibrem/pubs/OfflineEvalJeunen2018.pdf)
pipeline for recommender systems, curated for the e-commerce setting.

#### 🏆 Learning to Rank with Reinforcement Learning

To optimise any ranked list on our platform, I initially framed this task as a Supervised Machine-Learned
Ranking problem, which involved comparing the predicted ranking to some ideal ranking using a metric such
as [nDCG](https://en.wikipedia.org/wiki/Discounted_cumulative_gain#Normalized_DCG) and fitting a simple
heuristic to this. To improve on this iteration, I implemented Bayesian Reinforcement
Learning-to-Rank [bandit](https://en.wikipedia.org/wiki/Multi-armed_bandit) strategies (
e.g. [Thompson sampling](https://en.wikipedia.org/wiki/Thompson_sampling) ), which
use [explore and exploit](https://conceptually.org/concepts/explore-or-exploit) to continuously learn and
improve the rankings. As new data is collected through our event-pipeline, we
use [Airflow](https://airflow.apache.org/) to frequently update item rankings on our platform (e.g. by
re-sampling from an updated posterior distribution).

#### 👨🏽‍💼 Leadership / Management / Soft Skills

- Helped management (CEO, COO, and CTO) and product owners in brainstorming sessions, defining company OKRs
  and team KPIs, and led meaningful reporting initiatives and important ad-hoc analysis.
- The team grew from 3 to 15 people since I joined. I helped with the recruiting, assessing, and interviewing
  of candidates (including the current Head of Data) as well as organising and attending career fairs.
- Provided guidance and supervision to two University students working on their Master’s Thesis. Both
  students produced valuable projects for Tiqets and finished with outstanding grades (8/10 and 8.5/10).
- Integrated ideas from methodologies such
  as [CRISP-DM](https://en.wikipedia.org/wiki/Cross-industry_standard_process_for_data_mining) to bring
  structure to the Data Science project lifecycle. Helped creating and prioritising the Data Science backlog,
  as well as making weekly meetings more fruitful and actionable.
- Lead several company-wise trainings in general analytical competency and advanced
  BI ([Looker](https://looker.com/)) practice.

## Accelogress <span style="color: gray; font-size: 16px; font-weight: normal;">(1yr 10mos)</span>

<div class="grid cards grid-professional-experience" markdown>
- 👨🏽‍🏭 Software Engineer (Machine Learning)
- 🇬🇧 Gildford, UK
- 🗓️ Jun 2016 - Mar 2018
</div>

As a Machine Learning Engineer, I worked directly with the [CEO](https://www.linkedin.com/in/ralfkernchen)
and [Lead Developer](https://www.linkedin.com/in/mtalhaf) at [Accelogress Ltd](https://www.accelogress.com), a
software consultancy company developing solutions using machine learning and API technologies. For
the [Save-a-Space](https://save-a-space.com) project, I led the development of (1) the forecasting engine for
car park availability using a robust machine-learning framework, and (2) a pre-processing layer and REST API
to expose historical, realtime, and forecasted availability for multiple car parks around the UK, to our
mobile app and web dashboards.

**Technologies**: Docker, nginx, Gunicorn, Django REST Framework, JavaScript, AngularJS, scikit-learn, MySQL

---

!!! buzz "SEO (buzz)word-bank"
    Python | SQL | Docker | Big Data | Spark | AWS | Kubernetes | MLOps | CI/CD | Agile | Microservices
