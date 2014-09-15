Iva test days
=============


A set of droydrunner demos for the iva test days

usage

start the container

```
sudo docker run -ti  cocoon/ivatestdays /bin/sh
```

use it


phone test with python

```
cd /tests/python_phone

python calls.py

python ussd_123.py
```


robot framework tests

```
cd /tests/robotdemo
pybot keyword_driven.txt


cd /tests
rflauch -j /tests/robotdemo/jobs.yaml keyword_driven


```

