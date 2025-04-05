.PHONY: run-dev run-prod tests
.DEFAULT_GOAL := run-dev

HOST = '0.0.0.0'
PORT = '8000'
VENV=.venv

ifeq ($(OS),Windows_NT)
    PYTHON := python
    FOLDER := Scripts
    PIP := pip
else
    PYTHON := python3
    FOLDER := bin
    PIP := pip3
endif


$(VENV):
	$(PYTHON) -m venv $(VENV)

install: $(VENV)
	$(VENV)/$(FOLDER)/$(PIP) install -r requirements.txt
	
run-dev:
	$(VENV)/$(FOLDER)/uvicorn src.main:app --reload --host ${HOST} --port ${PORT} --log-config log_conf.json

run-prod:
	$(VENV)/$(FOLDER)/gunicorn -c gunicorn_config.py

tests:
	$(VENV)/$(FOLDER)/tox