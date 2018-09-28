---
layout: post

title: "Data science for parking availability prediction"

subtitle: A quick insight into how I've built the engine and API dealing with the real-time analysis of parking data and occupancy prediction for the Save-a-Space project

permalink: /Save-a-Space/

category: Projects

tags: [Machine-Learning, projects, Python, API]

images:

  - url: /assets/images/posts/pixel-mockup-booking-2.png
    caption:

  - url: /assets/images/posts/saveaspacesearch.jpg
    caption: The Save-a-Space mobile app will automatically find the best parking space according to user preferences.

  - url: /assets/images/posts/sklearnSAS.png
    caption: The first 14 days of generated example data.

  - url: /assets/images/posts/SASserverpipeline.png
    caption: Diagram of the server setup used.

  - url: /assets/images/posts/sashistvspred.png
    caption: Comparison of the predicted data (Orange) and real data (Blue)

---



Accelogress Ltd is a UK based software consultancy company developing
mobile app solutions using data analysis, machine learning, and API
technologies. Accelogress' project,
[Save-a-Space](https://save-a-space.com), introduces a cloud-based
mobile marketplace for real-time booking of parking spaces, which
optimizes parking management (for parking operators) and drivers'
experience (for the end-users).  Save-a-Space's mobile app allows drivers
to easily find and book the most suitable parking space, according to
their personal preferences.


{% assign image = page.images[1] %}
{% include image.html image=image %}

During my summer internship at Accelogress Ltd, I was trusted with
building the engine and API that deals with the real-time analysis of
parking data and occupancy prediction for their Save-a-Space project.
The API would have to allow for a simple but flexible access to
historical data, as well as availability predictions.


# The API

Since the prediction engine was going to be built with Python, it made
sense to also build the API with some Python framework for easy
integration of the two. The API was built using
[Django REST framework](http://www.django-rest-framework.org), which can
quietly sit on top of a [Django](https://www.djangoproject.com/) server.
Having this integrated setup also allowed for scheduled remote updating
of prediction datasets. The API allows applications and end-users to
query historical data for any car park, as well as predictions of future
occupancy. The Django server was mounted onto a
[Gunicorn](https://gunicorn.org/) which, in turn, runs on an
[nginx](https://www.nginx.com/) server. The whole environment runs on a
[Docker](https://www.docker.com/) container, which makes it easy and
quick to go from development into a production environment.

{% assign image = page.images[3] %}
{% include image.html image=image %}

# The Prediction Engine

Thanks to Google's [scikit-learn](http://scikit-learn.org) machine
learning library, the implementation of the prediction algorithm was one
of the most straightforward parts of this project. The goal was to
predict the occupancy of a car-park at some point in the future. We had
years worth of parking data, which was important for testing different
algorithms and optimizing the ones that performed best.
I chose the [_mean-squared-error_](https://en.wikipedia.org/wiki/Mean_squared_error)
(MSE) to be our performance metric. What we need now is to minimize
the MSE of our algorithm, as an MSE of zero represents a perfect estimator.

The algorithm can take as input parameters like the month; week-day;
hour; bank holidays (True/False); etc... and outputs the predicted
availability. The choice of input parameters affects the
performance of the algorithm. To find the optimal machine learning
_smoothie_, I ran a brute-force test with multiple algorithms for
multiple car parks with different combinations of input parameters,
with the goal of minimizing the MSE. In the end, I found the
[Decision Tree Algorithm](http://scikit-learn.org/stable/modules/tree.html)
to be the most suitable and reliable estimator. Decision trees allow
us to easily visualize the underlying model, which can be very useful to
communicate the factors that most influence the occupancy of a car park.
This can be especially useful for parking operators. Each algorithm
will have its own extra set of parameters that can be extremely useful for
minimizing the MSE. In the case of trees, we can use the _maximum-depth_
to limit its size and prevent
[overfitting](https://en.wikipedia.org/wiki/Overfitting). After tuning
each ingredient I was able to get the MSE of our algorithm to be as low
as 0.37%!

{% assign image = page.images[4] %}
{% include image.html image=image %}


## Working example

This is a quick working example of how to get started with the tree
classifier from scikit-learn. In this first code block, I am generating
some example data that we will need to train and test our chosen algorithm.

```python
import numpy as np

SAMPLE_SIZE = 896  # 28 * 6

# 4 weeks range: 28 days times 2*pi radians
t_range = np.linspace(0, 56 * np.pi), SAMPLE_SIZE)

# Generate a sin wave for the occupancy percentage
occupancy = 100 * (0.5 * np.cos(t_range - np.pi) + 0.5)
# Reduce occupancy on weekends
occupancy *= np.tile([1, 1, 1, 1, 1, 0.7, 0.5], 4).repeat(SAMPLE_SIZE / 28)
# Add some random noise
occupancy *= np.random.uniform(0.95, 1, SAMPLE_SIZE)
# Round the occupancy percentage to the nearest integer
occupancy = np.rint(occupancy)

# Convert from radians to 'days' and
# clip days of week between 0 and 6
t_range_cliped = (t_range / (2 * np.pi)) % 7
weekdays = np.rint(t_range_cliped)
# transform fractional part of the day to an hour
hour = np.rint(np.modf(t_range_cliped)[0] * 24) + 1
```

The code above generates a hypothetical dataset for a car park that peaks
at mid-day and has less occupancy on weekends. In this example, I generated
4 weeks of data. The image below shows the first 14 days of the generated
dataset.

{% assign image = page.images[2] %}
{% include image.html image=image %}

As you'll see below, getting started with the sklearn library is extremely
easy. This is a very simple example of how we could use the data generated
above to make availability predictions in the future. In the example below
the Decision Tree Classifier predicts that on Sundays at mid-day the
occupancy is around 48% and on Tuesdays at 9 am is around 70%. Comparing
this prediction with the plot above, we see that the tree was accurate.

```python
from sklearn.tree import DecisionTreeClassifier

# Create and instance of DecisionTreeClassifier
clf = DecisionTreeClassifier()

# Input parameters (features): day-of-week, hour-of-day
input_features = np.stack([weekdays, hour], axis=-1)

# Train the classifier
clf.fit(input_features, occupancy)

# Make a prediction for:
#   - Sunday at 12pm: [6, 12]
#   - Tuesday at 9am: [1, 9]
prediction = clf.predict([[6, 12], [1, 9]])
print(prediction)
```
