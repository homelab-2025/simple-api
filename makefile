.PHONY: install run-dev run-prod tests clean
.DEFAULT_GOAL := run-dev

HOST = '0.0.0.0'
PORT = '8000'
VENV=.venv

ifdef OS
	RM := rmdir /S /Q
else
	RM := rm -rf
endif


install:
	uv sync
	
run-dev:
	uv run uvicorn src.main:app --reload --host ${HOST} --port ${PORT} --log-config log_conf.json

run-prod:
	uv run gunicorn -c gunicorn_config.py

tests:
	uv run tox

clean:
	$(RM) $(VENV)
