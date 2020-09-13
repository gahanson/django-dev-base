FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
COPY start-up-django.sh /code/
ENTRYPOINT ["sh", "/code/start-up-django.sh"]
RUN pip install -r requirements.txt
COPY . /code/