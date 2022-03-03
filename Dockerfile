FROM python:3.9-alpine
MAINTAINER dmitry bond

ENV PYTHONUNFBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user

USER user

