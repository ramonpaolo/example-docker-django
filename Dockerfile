FROM python:3.9.0-alpine

LABEL maintainer="Ramon Paolo Maran <ramonpaolomaran12@gmail.com>"

WORKDIR /var/www

COPY . .

RUN apk update && apk add zlib-dev jpeg-dev gcc musl-dev && pip install -r requirements.txt && python manage.py migrate

CMD python manage.py runserver 0.0.0.0:8000

EXPOSE 8000