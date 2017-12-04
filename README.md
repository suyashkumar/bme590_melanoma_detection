# bme590_melanoma_detection
This is the starter repository for [BME590 Medical Software Design](https://github.com/mlp6/Medical-Software-Design) [final projects](https://github.com/mlp6/Medical-Software-Design/blob/master/Assignments/final_project_fall_17/final_project_f17.pdf) for Fall 2017. This repository contains:

* Starter code and docker compose configuration to run a basic Flask webserver. A `get_prediction` module has been written to allow you to get predictions from the included melanoma classification model. 
* Weights for a basic retrained version of inception net for classifying melanoma images. You too can retrain inception net on images by following this Google [codelab](https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/#0). This will yield you new graph weights in a `.pb` file. 

## Getting Started
An example call to the `get_prediction` module to fetch a melanoma classification for an input `(?, ?, 3) numpy.ndarray` can be seen in the iPython notebook [here](https://github.com/suyashkumar/bme590_melanoma_detection/blob/master/Example%20get_prediction.ipynb). A basic Flask web server is written in `main.py` to get you started. To run this project, run `docker-compose up` from the root of the repository. This will start up the web service in `main.py` serving on port `:8080`. You can then edit the files in the repository, and the Flask web server will automatically reload as you make changes during development. If you want to interact with the project in an interactive iPython notebook, you should be able to click on the provided link that should appear when you run `docker-compose up`. 

If you need to add any dependencies to your project, add them as a `RUN pip install ...` command in the [Dockerfile](https://github.com/suyashkumar/bme590_melanoma_detection/blob/master/Dockerfile). This is the file that is run whenever your image is compiled.

To compile all containers from scratch (needed whenever the Dockerfile is changed), run `docker-compose up --build`. 
