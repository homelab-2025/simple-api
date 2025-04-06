.PHONY: venv install run-dev run-prod tests clean
.DEFAULT_GOAL := run-dev

HOST = '0.0.0.0'
PORT = '8000'
VENV=.venv

ifdef OS
	PYTHON := python
	FOLDER := Scripts
	PIP := pip
	RM := rmdir /S /Q
else
	PYTHON := python3
	FOLDER := bin
	PIP := pip3
	RM := rm -rf
endif


venv:
	$(PYTHON) -m venv $(VENV)

install: venv
	$(VENV)/$(FOLDER)/$(PIP) install -r requirements.txt
	
run-dev:
	$(VENV)/$(FOLDER)/uvicorn src.main:app --reload --host ${HOST} --port ${PORT} --log-config log_conf.json

run-prod:
	$(VENV)/$(FOLDER)/gunicorn -c gunicorn_config.py

tests:
	$(VENV)/$(FOLDER)/tox

clean:
	$(RM) $(VENV)
