FROM python:3.8-slim

RUN apt-get update && apt-get install -y python3-pip

WORKDIR /flask

COPY . /flask


RUN pip install -r requirements.txt


EXPOSE 5000

CMD [ "python","main.py" ]

