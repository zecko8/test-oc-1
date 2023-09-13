FROM ubuntu:18.04

RUN apt update && apt install -y python python-pip

RUN pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
