FROM cocoon/droydrunner

RUN mkdir /opt/iva

ADD requirements.txt /opt/iva/
RUN pip install -r requirements.txt

ADD ./demo /opt/iva/

WORKDIR /opt/iva

CMD []
