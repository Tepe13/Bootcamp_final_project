FROM python:3

WORKDIR /usr/webapp

RUN pip install flask
RUN pip install flask-mysqldb

COPY ./webapp/app.py app.py

EXPOSE 5000

CMD [ "python", "app.py" ]


