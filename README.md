[![FelixGeelhaar](https://circleci.com/gh/FelixGeelhaar/udacity-project-4.svg?style=svg)](<LINK>)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


## Project Summary

In this project, I learned a lot about flask applications, Makefiles and how to configure and push images to DockerHub and deploy them afterwards via K8s. It was a lot of fun.

### Learnings

There is a indentation issue with the provided yaml file for circle ci which made it quite difficult to just run it. Also Pylint was missing in the requirements.txt – think about adding it. Also the formatted logging is already a outdated linting rule for Pylint so that I needed to change it to a normal string interpolation.

### Files

* In the Project the main file is the `app.py`, that's your application which you'll also run within the Dockerfile. 
* Additionally we have the `make_prediction.sh` that is used to send a request to Port 8000 to the application (that't why we needed port forwarding). 
* There is also the `run_docker.sh` & `upload_docker.sh`. The `run_docker.sh` takes care of building and running your Docker Container and the `upload_docker.sh` ships it to the Docker Registry alias Docker Hub
* The last sh-script is named `run_kubernetes.sh` and takes care of running your Container within a K8s Cluster
* `requirements.txt` includes all necessary third-party-dependencies
* `Makefile` as a task collection to run linting, validation, installation and so forth
* `output_txt_files`is the folder with the project requirements and the output txt files
* `model_data` has needed model traings data from boston housing
* `.circleci` as our CI/CD pipeline configuration

### Running it

To run this repo, after pulling it, you need to create a virtual environment: `python3 -m venv venv` and activate it afterwards `source venv/bin/actiave`. After setting up the virtual environment `make install` will install all necessary external modules.

To lint your project run `make lint` to ensure everything is working. As I wrote above, I had difficulties since the linting rules updated. Additionally I added the optimized way for writing log statements.

### Solution

This is my submission, so before you use it, try it on your own.
