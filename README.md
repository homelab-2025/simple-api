## simple-api

This repo aims to test technologies with a simple implementation of a Python REST API

> Note: You can find more specific docs in the folder `docs/`

## Summary

* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [Running the Application](#running-the-application)
* [API Documentation](#api-documentation)
* [Usage](#usage)
* [Testing](#testing)
* [Usefull links](#usefull-links)

## Prerequisites

- [Python 3.6+](https://www.python.org/downloads/)
- [pip](https://pip.pypa.io/en/stable/installation/)
- [make](https://gnuwin32.sourceforge.net/packages/make.htm)

## Installation

1. Clone the repository:

```bash
git clone https://gitlab.com/homelab-2025/simple-api.git
cd simple-api
```

2. Comment the makefile variables that do not correspond to your system

3. Then to create a virtual environment and to install packages, type in your terminal:

```bash
make install
```

[Back to top](#simple-api)

## Running the Application

To run the application using uvicorn:

```bash
make run-dev
```

To run the application using gunicorn and uvicorn:

```bash
make run-prod
```

> note: gunicorn is only available on linux

[Back to top](#simple-api)

## API Documentation

Once the application is running, you can access the interactive API documentation at:

- [Swagger UI](http://127.0.0.1:8000/docs)
- [ReDoc](http://127.0.0.1:8000/redoc)

[Back to top](#simple-api)

## Usage

You can find sample queries in the `pycharm_postman.http` file (which can be run interactively in PyCharm)

[Back to top](#simple-api)

## Testing

To run the tests, you can use:

```bash
make tests
```

This will run tests cases in differents environments using 

[Back to top](#simple-api)

## Usefull links

- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [Uvicorn Documentation](https://www.uvicorn.org/)
- [Gunicorn Documentation](https://gunicorn.org/#docs)

[Back to top](#simple-api)