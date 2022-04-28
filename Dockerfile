FROM ubuntu
RUN apt update
RUN apt-get install -y python python-setuptools python-dev build-essential python3-pip python3-mysqldb
RUN pip install flask flask-mysql
COPY . /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
