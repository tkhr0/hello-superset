FROM python:2.7

WORKDIR /app

RUN apt-get update \
    && apt-get -y install build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev

RUN pip install --upgrade setuptools pip \
    && pip install superset mysqlclient \
    && fabmanager create-admin --app superset --username=adminuser --firstname=admin --lastname=user --email="hoge@gmail.com" --password=admin \
    && superset db upgrade \
    && superset load_examples \
    && superset init

ADD superset_config.py ./superset_config.py

CMD ["superset", "runserver", "-p", "80"]
