## Student instructions
# Dockerfile should pass hadolint
# app.py should pass pylint
# optional, but recommended, build a simple integration test

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C hello.py

all: install lint test
