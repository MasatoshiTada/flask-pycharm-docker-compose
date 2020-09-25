FROM python:3.8-alpine3.12

RUN mkdir /app
WORKDIR /app

COPY main.py main.py
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000

CMD python main.py
