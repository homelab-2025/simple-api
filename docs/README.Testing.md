## Testing

[README](../README.md)

The commands `make tests` use the following tools to improve unit testing:

- **[pytest](https://docs.pytest.org/en/stable/)**: A testing framework that makes building simple and scalable test cases easy. It is widely used for writing unit tests in Python.

- **[pytest-cov](https://pytest-cov.readthedocs.io/en/stable/)**: A plugin for `pytest` that provides coverage reporting. It is a tiny wrapper around [coverage.py](https://coverage.readthedocs.io/en/latest/) that helps you measure code coverage and generate coverage reports. The configuration file of the tool is: `.coveragerc`

- **[httpx](https://www.python-httpx.org/)**: An HTTP client for Python 3 that provides asynchronous capabilities. It is used here to make HTTP requests in unit tests.

- **[tox](https://tox.wiki/en/stable/)**: A tool that automates testing in Python. It allows you to run tests in multiple environments, ensuring that your code works across different Python versions and dependencies. The configuration file of the tool is: `tox.ini`
