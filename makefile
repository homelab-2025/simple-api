.PHONY: run-dev run-prod tests
.DEFAULT_GOAL := run-dev

HOST = '0.0.0.0'
PORT = '8000'
VENV=.venv

#windows
PYTHON=python 
FOLDER=Scripts
PIP=pip

#linux
#PYTHON=python3
#FOLDER=bin
#PIP=pip3


$(VENV):
	$(PYTHON) -m venv $(VENV)

install: $(VENV)
	$(VENV)/$(FOLDER)/$(PIP) install -r requirements.txt
	
run-dev:
	$(VENV)/$(FOLDER)/uvicorn src.main:app --reload --host ${HOST} --port ${PORT} --log-config log_conf.json

run-prod:
	$(VENV)/$(FOLDER)/gunicorn -c gunicorn_config.py -k uvicorn.workers.UvicornWorker src.main:app --workers 4 --bind ${HOST}:${PORT} --log-config-json log_conf.json

tests:
	$(VENV)/$(FOLDER)/tox