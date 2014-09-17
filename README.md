Iva test days
=============


A set of droydrunner demos for the iva test days

usage
=====

start the container
-------------------

```

sudo docker run -ti -rm --name ivatestdays  -v /home/cocoon/shared/ivatestdays/jenkins:/jenkins cocoon/ivatestdays /bin/bash

```

where 
* /home/cocoon/shared/ivatestdays/jenkins is the directory on the docker host where to store the jenkins state
* /jenkins is the directory on the container where jenkins state is stored
* /tests is the directory on the container where the source tests are stored

use it


phone test with python
----------------------

```
cd /tests/python_phone

python calls.py

python ussd_123.py
```


robot framework tests
---------------------

```
cd /tests/robotdemo
pybot keyword_driven.txt


cd /tests
rflaunch -j /tests/robotdemo/jobs.yaml keyword_driven


```

tests with jenkins
------------------

on the docker host start a jenkins instance using the volumes defined in ivatestdays

```
sudo docker run -d -p 8085:8080 --volumes-from ivatestdays --name jenkins    cocoon/jenkins
```

where
* -p 8085:8080 give access to the jenkins server via the port 8085
* --volumes-from tells the instance to use the ivatestdays container's volumes (/jenkins , /tests)

open a web browser on $DOCKER_HOST:8085 to enter your jenkins instance