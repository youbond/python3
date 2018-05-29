FROM ubuntu:18.04

ENV LANG C.UTF-8
RUN apt-get update && apt-get install -y python3.5 python3.5-dev python-pip virtualenv
RUN pip install setuptools pip --upgrade --force-reinstall
RUN virtualenv /venv/testenv/ -p `which python3.5`
