FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

COPY app/ /app/app/

RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install -y poppler-utils

CMD ["/bin/sh", "-c", "python -m app.main"]