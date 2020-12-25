# Professional Experience

!!! tip "TL;DR"
    - I help teams and companies deliver value-driven solutions to data science problems, **fast!**
    - I have hands-on experience in **solving real business-problems** using techniques from descriptive
      analytics, Bayesian inference, time series forecasting, recommender systems, reinforcement learning, 
      and many others.



## Tiqets

👨🏽‍🏭 Machine Learning Engineer

🌍 Amsterdam, Netherlands

🗓️ Jan 2019 - Present

As a Machine Learning Engineer, I am part of [Tiqets](https://www.tiqets.com/en/)' core Data Team. I work
closely with data and business analysts, data engineers, as well as product owners and management team. I
apply software development, data analytics, and machine learning to scale and operationalise statistical
models and make the whole organisation more data-driven.

#### 📈 Time Series Forecasting

Operationalised sales forecasting by building a general and automated pipeline for pre-processing, model
selection, evaluation, and periodic updating of forecasted values. Any of these jobs are distributed
across [Celery](https://github.com/celery/celery) workers running on pods in our Kubernetes cluster.
Forecasted values are then exposed to our [DWH](https://aws.amazon.com/redshift/) and can be visualised in
our [BI tool](https://looker.com/). We used [DataDog](https://www.datadoghq.com/) for monitoring. FYI: for
the most part, [LSTM](https://en.wikipedia.org/wiki/Long_short-term_memory) neural networks did not yield
better results than classic approaches such as ARIMA and Exponential Smoothing, while an
optimised [Prophet](https://facebook.github.io/prophet/) model performed best.

**Technologies:** Kubernetes, ECR, S3, Redshift, SQLAlchemy, Alembic, DataDog, Celery, Redis, Dynaconf,
FBProphet, mypy, pytests, scikit-learn, sphinx, statsmodels, pandas, numpy

#### 🎥 Recommender System

Improved recommendations across our platform by taking user-preference and item-similarity into account. Also
enriched popularity-based heuristics for [cold-start](https://recsyswiki.com/wiki/Cold-start_problem)
instances by taking distance and recency into account. A curated version of
an [Amazon Personalize](https://aws.amazon.com/personalize/) model now powers great part of recommendations
at Tiqets. To help the Data Team iterate faster and with greater confidence on new versions of the
recommender models, we also implemented
a [time-dependent offline evaluation](http://adrem.uantwerpen.be/bibrem/pubs/OfflineEvalJeunen2018.pdf)
pipeline for recommender systems, curated for the e-commerce setting.

#### 🏆 Learning to Rank with Reinforcement Learning

To optimise any ranked list on our platform, I initially framed this task as a Supervised Machine-Learned
Ranking problem, which involved comparing the predicted ranking to some ideal ranking using a metric such
as [nDCG](https://en.wikipedia.org/wiki/Discounted_cumulative_gain#Normalized_DCG). To improve on this
iteration, I implemented Bayesian Reinforcement Learning to
Rank [bandit](https://en.wikipedia.org/wiki/Multi-armed_bandit) strategies (
e.g. [Thompson sampling](https://en.wikipedia.org/wiki/Thompson_sampling) ), which
use [explore and exploit](https://conceptually.org/concepts/explore-or-exploit) to continuously learn and
improve the rankings. As new data is collected through our event-pipeline, we
use [Airflow](https://airflow.apache.org/) to frequently update the rankings (e.g. by re-sampling from the
updated posterior distribution).

#### 👨🏽‍💼 Leadership / Management / Soft Skills

- Provided guidance and supervision to two University students working on their Masters Thesis. Both students
  finished with outstanding grades (8/10 and 8.5/10).
- Integrated ideas from methodologies such
  as [CRISP-DM](https://en.wikipedia.org/wiki/Cross-industry_standard_process_for_data_mining) to bring
  structure to the Data Science project lifecycle. Helped creating and prioritising the Data Science backlog,
  as well as making weekly meetings more fruitful and actionable.
- Helped management (CEO, COO, and CTO) in brainstorming sessions, ad-hoc analysis, and reporting.
- Lead several company-wise trainings in general analytical competency and advanced
  BI ([Looker](https://looker.com/)) practice.
- The Data Crew at Tiqets grew from 3 to 15 people since I joined. I helped with the recruiting, assessing,
  and interviewing of candidates as well as organising and attending career fairs.

## Accelogress

👨🏽‍🏭 Machine Learning Engineer

🌍 Gildford, UK

🗓️ Jun 2016 - Mar 2018

As a Machine Learning Engineer, I worked directly with
the [CEO](https://www.linkedin.com/in/ralfkernchen/?originalSubdomain=uk)
and [Lead Developer](https://www.linkedin.com/in/mtalhaf/) at [Accelogress Ltd](https://www.accelogress.com/)
, a software consultancy company developing solutions using machine learning and API technologies. For
the [Save-a-Space](https://save-a-space.com/) project, I lead the development of (1) the forecasting engine
for car park availability - using a robust machine learning framework - and (2) the pre-processing engine and
REST API to expose historical, real-time, and forecasted availability for multiple car-parks around the UK,
to our mobile app and web dashboard.

**Technologies:** Docker, nginx, Gunicorn, Django REST Framework, AngularJS, scikit-learn, MySQL
