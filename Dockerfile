FROM python:latest

COPY . /var/www
WORKDIR /var/www

RUN pip install poetry
RUN poetry install




ENTRYPOINT [ "poetry", "run", "python", '"manage.py", "runserver"' ]

EXPOSE 8000

