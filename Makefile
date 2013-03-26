SHELL := /bin/bash

init:
	python setup.py develop
	pip install -r requirements.txt

test:
	rm -f .coverage
	nosetests ./tests/

travis:
	nosetests --with-coverage ./tests/ --cover-package=freezegun

tdaemon:
	tdaemon -t nose ./tests/ --custom-args="--with-growl"