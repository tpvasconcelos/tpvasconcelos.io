---
title: Professional experience
description: About my professional experience.
---

# Professional experience

[Let's connect on LinkedIn :fontawesome-brands-linkedin:](https://www.linkedin.com/in/tpvasconcelos/){: .md-button .md-button--primary }
[Download my CV (PDF) :fontawesome-solid-file-arrow-down:](../assets/files/CV_TPVasconcelos.pdf){: .md-button }

## Nike <span style="color: gray; font-size: 16px; font-weight: normal;">(2 years)</span>

<div class="grid cards grid-professional-experience" markdown>
- 👨🏽‍🏭 &nbsp; **Tech Lead - Machine Learning Engineering**
- 🇳🇱 Hilversum, NL
- 🗓️ Aug 2022 - Aug 2024
</div>

My responsibility was to guide and lead all technical aspects of our forecasting system and its development, including solutions architecture, systems design, infrastructure and reliability considerations, CI/CD, speed of iteration, down to repository structure, code patterns, software tooling, and developer experience.

**Product:** Delivery of reliable insights on Nike’s consumer demand to senior ELT members and multiple store planning and merchandise financial planning teams around the globe on time and on a regular basis.

**Deliverables:** Medium- to long-term forecasts and [demand sensing](https://en.wikipedia.org/wiki/Demand_sensing) for multiple metrics, various granularity levels (both temporal and hierarchical), and under different assumptions for leading demand indicators such as promotional plans.

**Forecast reconciliation:** Our solutions ranged from highly granular bottom-up forecasts using many contextual drivers, to high-level top-down forecasts driven by macroeconomic projections. In all cases, we had to ensure that our forecasts (as well as the forecasts produced by other teams) were aligned and consistent. 

**Forecast evaluation:** To build trust with our business stakeholders and help our team iterate faster and more confidently on new model versions, I put forward a set of guidelines and design principles for implementing robust, unbiased, and theoretically sound evaluation strategies for our modelling approaches. First shared as an RFC within the team and later externally, I documented important considerations such as choosing the right [measures of forecast accuracy](https://www.notion.so/29a25d727bd14e7b9bc45260259a7a66?pvs=21), CV design choices, aggregation over temporal and hierarchical granularities, the difference between model-selection and evaluation and its consequences, etc.

**Orchestration:** Our pipelines were orchestrated and scheduled using [Airflow](https://github.com/apache/airflow), [Kubernetes](https://kubernetes.io/), and [SageMaker](https://aws.amazon.com/sagemaker/). We defined many ETL pipelines but made all inference jobs idempotent and easy to debug by providing clear data provenance and allowing engineers to resolve issues with upstream data sources asynchronously.

**Data governance:** Dataset validation checks were implemented for all upstream and downstream datasets and most intermediate transformations. Apart from allowing us to better document all our datasets, this has proved useful many times in detecting upstream regressions and changes that could go unnoticed otherwise.

## Beat <span style="color: gray; font-size: 16px; font-weight: normal;">(1yr 2mos)</span>

<div class="grid cards grid-professional-experience" markdown>
- 👨🏽‍🏭 &nbsp; **Senior Machine Learning Engineer**
- 🇳🇱 Amsterdam, NL
- 🗓️ Jun 2021 - Jul 2022
</div>

[Beat](http://thebeat.co/) was the fastest-growing ride-hailing service in Latin America. My mission was to develop, deploy, and maintain Data Science and Machine Learning solutions to detect and prevent fraud, reduce financial losses and abuses, and ensure a safe environment for the all users on our platform. All of this while keeping the business metrics healthy and the company growing!

**Feature store deployment:** Coordinated and led the design and implementation of a [feature store](https://www.tecton.ai/blog/what-is-a-feature-store/) solution to serve all ML and Analytics teams at BEAT. Started by testing and evaluating managed solutions such as [Databricks](https://docs.databricks.com/applications/machine-learning/feature-store/index.html), [SageMaker](https://aws.amazon.com/sagemaker/feature-store/), and [Tecton](https://www.tecton.ai/), but settling for [Feast](https://feast.dev/) (open-source) as the registry and serving layers. Deployed the end-to-end solution on our [Kubernetes](https://kubernetes.io/) cluster using our data lake and [Trino](https://trino.io/) as the offline store, and a low-latency gRPC service and [ElastiCache](https://aws.amazon.com/elasticache/redis/) as the online store. Worked closely with Feast’s dev team by providing feedback and [contributing](https://github.com/feast-dev/feast/issues?q=involves:tpvasconcelos) to the open-source project (see [my open-source contributions](/open-source/)).

**Fraud prevention:** Worked on the design and development and led the deployment of a [chargeback](https://en.wikipedia.org/wiki/Chargeback) fraud prevention system by **1)** designing the solution’s architecture; **2)** validating the assumptions and performance estimations; **3)** developing an ML batch workflow ([PySpark](https://spark.apache.org/docs/3.3.1/api/python/index.html) + [Argo Workflows](https://argoproj.github.io/workflows/)) that computes risk scores and pushes them to a [Kafka](https://kafka.apache.org/) topic, with asynchronous ingestion to a fast-store by a backend system; **4)** configured monitoring, alerting, and data validation for the application and infrastructure with [Prometheus](https://prometheus.io/) and [Grafana](https://grafana.com/), and; **5)** designing and running an online controlled experiment to measure to *real* impact of the model.

**Fraud detection:** Collaborated with another Data Scientist on a fraud detection problem where the labels were sparse, biased, noisy, and mostly [positive and unlabelled (PU)](https://link.springer.com/article/10.1007/s10994-020-05877-5). We considered and explored several modelling options from naive binary classification with gradient boosting models to more robust [active-learning](https://en.wikipedia.org/wiki/Active_learning_(machine_learning)) approaches. The final implementation is based on an iterative semi-supervised learning solution that yields twice as many fraud cases as the previous system while keeping precision extremely high.

## Tiqets <span style="color: gray; font-size: 16px; font-weight: normal;">(2yrs 5mos)</span>

<div class="grid cards grid-professional-experience" markdown>
- 👨🏽‍🏭 &nbsp; **Machine Learning Engineer**
- 🇳🇱 Amsterdam, NL
- 🗓️ Jan 2019 - May 2021
</div>

As an ML Engineer, I was part of [Tiqets](https://www.tiqets.com/en/)' core Data Team. Working closely with business analysts, data engineers, product owners, and ELT members, I applied software development, data analytics, and machine learning to scale and operationalise statistical models and make the whole organisation more data-driven.

**Time series forecasting:** Operationalised and automated demand forecasting at Tiqets by developing a generalised time-series forecasting framework from scratch that would support pre-processing, model selection, evaluation, and periodic batch inference jobs for various business contexts and requirements. Each task was distributed across an array of [Celery](https://github.com/celery/celery) workers deployed on our [Kubernetes](https://kubernetes.io/) cluster. Forecasted values and model metadata were pushed to [Amazon Redshift](https://aws.amazon.com/redshift/) and visualised by business stakeholders in our [Looker](https://cloud.google.com/looker/) BI instance. We also used [DataDog](https://www.datadoghq.com/) for application and infrastructure monitoring.

**Recommender system:** Improved recommendations across our platform by integrating with the [AWS Personalize](https://aws.amazon.com/personalize/) service and developing robust heuristics for [cold-start](https://recsyswiki.com/wiki/Cold-start_problem) instances (taking distance, popularity, and seasonality into account). To help the team iterate faster and with greater confidence, we also implemented a [time-dependent offline evaluation](http://adrem.uantwerpen.be/bibrem/pubs/OfflineEvalJeunen2018.pdf) for recommender systems, curated for our e-commerce setting.

**Learning-to-Rank & Reinforcement Learning:** Implemented online Bayesian Reinforcement Learning-to-Rank [bandit](https://en.wikipedia.org/wiki/Multi-armed_bandit) strategies (e.g. [Thompson sampling](https://en.wikipedia.org/wiki/Thompson_sampling) ), which use [*explore and exploit*](https://conceptually.org/concepts/explore-or-exploit) to continuously learn and improve the rankings of product variants on product pages. An [Airflow](https://airflow.apache.org/) pipeline was scheduled to frequently update all item rankings by re-sampling from updated posterior distributions as new data came in.

**Supervised Learning-to-Rank:** Improved product rankings by framing the task as a Supervised Machine-Learned Ranking problem, and comparing predicted rankings to a defined *ideal* ranking (*e.g.,* using [nDCG](https://en.wikipedia.org/wiki/Discounted_cumulative_gain#Normalized_DCG)).

#### 👨🏽‍💼 Leadership / Management / Soft Skills

- Helped management (CEO, COO, and CTO) and product owners in brainstorming sessions, defining company OKRs and team KPIs, and led meaningful reporting initiatives and important ad-hoc analysis.
- The team grew from 3 to 15 people since I joined. I helped with the recruiting, assessing, and interviewing of candidates (including the current Head of Data) as well as organising and attending career fairs.
- Provided guidance and supervision to two University students working on their Master’s Thesis. Both students produced valuable projects for Tiqets and finished with outstanding grades (8/10 and 8.5/10).
- Integrated ideas from methodologies such as [CRISP-DM](https://en.wikipedia.org/wiki/Cross-industry_standard_process_for_data_mining) to bring structure to the Data Science project lifecycle. Helped creating and prioritising the Data Science backlog, as well as making weekly meetings more fruitful and actionable.
- Lead several company-wise trainings in general analytical competency and advanced BI ([Looker](https://looker.com/)) practice.

## Accelogress <span style="color: gray; font-size: 16px; font-weight: normal;">(1yr 10mos)</span>

<div class="grid cards grid-professional-experience" markdown>
- 👨🏽‍🏭 &nbsp; **Machine Learning Engineer**
- 🇬🇧 Gildford, UK
- 🗓️ Jun 2016 - Mar 2018
</div>

Worked closely with the CEO and Lead Developer at [Accelogress](https://www.accelogress.com/) on the [Save-a-Space](https://save-a-space.com/) project, where I led the development and implementation of time-series forecasting models and scheduled batch inference jobs for predicting car park availability for multiple locations around the UK. I also developed and deployed a REST API to expose historical, real-time, and forecasted availability to our mobile app and web dashboards.

**Technologies used:** Docker, nginx, Gunicorn, Django REST Framework, JavaScript, AngularJS, scikit-learn, MySQL
