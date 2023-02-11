FROM python:3.11-slim-bullseye

LABEL version="python-3.11"

WORKDIR /code

COPY ./requirements.txt ./

RUN : \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && :

CMD ["python3"]
