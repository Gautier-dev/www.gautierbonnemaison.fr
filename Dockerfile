FROM python:3

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

RUN pip install Flask
RUN pip install bootstrap-flask

WORKDIR /flask-app

COPY . /flask-app

EXPOSE 8080

CMD ["flask","run","-h","0.0.0.0","-p","8080"]
