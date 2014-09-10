FROM cocoon/droyrunner

RUN mkdir /opt/iva

ADD requirements.txt /opt/iva/
RUN pip install -r requirements.txt

ADD . /opt/iva

WORKDIR /opt/iva

CMD []
