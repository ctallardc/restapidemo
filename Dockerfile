FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY restapidemo /code/
CMD [ "python", "./manage.py","runserver","0.0.0.0:8001" ]