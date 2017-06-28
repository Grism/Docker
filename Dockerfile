# Helpful docker example code is from: https://github.com/democrats/Finance-Tech/blob/master/imports/stripe_import/Dockerfile

FROM lbosqmsft/mssql-python-pyodbc

RUN apt-get update
RUN apt-get install -y python-pip curl awscli

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ADD import.py /import.py
ADD run.sh /run.sh

CMD ["/bin/bash", "/run.sh"]
