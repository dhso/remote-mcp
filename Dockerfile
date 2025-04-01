FROM python:3.10-alpine3.18

MAINTAINER dhso

ENV DEV_MODE "false"

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

COPY ./app/* /app/

VOLUME ["/app/logs"]

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]