
FROM python:3.7-alpine
#MAINTAINER Londen App Developer Ltd 
#///any name (optional)'''
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app 
WORKDIR /app  
#''' switch it to default directory '''
COPY ./app /app

RUN adduser -D user
USER user