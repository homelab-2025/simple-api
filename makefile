.PHONY: run-dev run-prod tests
.DEFAULT_GOAL := run-dev

HOST = '0.0.0.0'
PORT = '8000'

run-dev:
	uvicorn src.main:app --reload --host ${HOST} --port ${PORT} --log-config log_conf.json

run-prod:
	gunicorn -k uvicorn.workers.UvicornWorker src.main:app --workers 4 --bind ${HOST}:${PORT}

tests:
	tox