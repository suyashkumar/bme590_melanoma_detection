from gcr.io/tensorflow/tensorflow:latest
RUN pip install Flask
ENV FLASK_APP=main.py
