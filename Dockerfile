FROM python:3.13-slim

RUN apt-get update \
    && apt-get install -y tar

RUN pip install --uprade pip \
    && pip install mkdocs