# syntax=docker/dockerfile:1

FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV PORT

CMD [ "sh", "-c", "python3 -m gunicorn --bind 0.0.0.0:$PORT app.app:app"]