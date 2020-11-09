FROM python:3.8-slim
ENV PYTHONUNBUFFERED=1
RUN apt-get update
RUN apt-get install gcc python3-dev default-libmysqlclient-dev -y
RUN mkdir /spb
WORKDIR /spb
COPY requirements.txt /spb/
RUN pip install -r requirements.txt
COPY . /spb/
