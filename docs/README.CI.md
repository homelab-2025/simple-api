## Continuous Integration

[README](../README.md)

### GitHub

The GitHub CI pipeline is defined in `.github/workflows/.ci.yml`

All steps are executed in an Github Ubuntu runner in the following order:
1. Checkout Code
2. Setup Python
3. Install tox
4. Execute tests with tox and generate code coverage report
5. Scan project and send it to [sonarcloud](https://sonarcloud.io/summary/overall?id=homelab-2025_simple-api&branch=main) for analysis

### Gitlab

The Gitlab CI pipeline is defined in `.gitlab-ci.yml`

The first part of the pipeline (stage `test`) runs in a python container, which is used to test the API using tox. At the end of this stage, a coverage report is generated and stored as an artifact.

The second part of the pipeline (stage `sonarcloud`) runs in a sonar-scanner container, which is used to scan the project and send it to sonarcloud for analysis.
