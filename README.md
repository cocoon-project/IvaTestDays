Iva test days
=============


A set of droydrunner demos for the iva test days

usage

start the container

```
sudo docker run -ti  cocoon/ivatestdays /bin/sh
```

use it


phone test

```
python python_phones_calls.py

python python_phone_ussd_123.py
```


robot framework tests

```
cd /opt/iva/robotdemo
pybot keyword_driven.txt

```

