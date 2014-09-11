FROM cocoon/droydrunner

RUN mkdir /opt/iva
WORKDIR /opt/iva

ADD requirements.txt /opt/iva/
RUN pip install -r /opt/iva/requirements.txt

ADD ./demo /opt/iva/



CMD []
