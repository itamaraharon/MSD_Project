FROM python:3.9-slim-buster

WORKDIR /app

RUN apt update
RUN pip3 install --upgrade pip

COPY App.py .

CMD ["python3", "App.py"]
