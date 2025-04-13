## Continuous Integration

[README](../README.md)

### Gitlab

The Gitlab CI pipeline is defined in `.gitlab-ci.yml`

The first part of the pipeline (stage `test`) runs in a python container, which is used to test the API using tox. At the end of this stage, a coverage report is generated and stored as an artifact.

The second part of the pipeline (stage `sonarcloud`) runs in a sonar-scanner container, which is used to scan the project and send it to [sonarcloud](https://sonarcloud.io/summary/overall?id=enzo2346_simple-api-mirror&branch=main) for analysis.
> Note that the scan itself is not done by the runner of the main repository but by a [mirror](https://gitlab.com/enzo2346/simple-api-mirror)

### GitHub

The GitHub CI pipeline is defined in `.github/workflows/.ci.yml`

> Note that each step of this pipeline is made from a [github mirror repo](https://github.com/enzo2346/simple-api-mirror)

All steps are executed in an Github Ubuntu runner in the following order:
1. Checkout Code
2. Setup Python
3. Install tox
4. Execute tests
5. Scan project and send it to [sonarcloud](https://sonarcloud.io/summary/overall?id=enzo2346_simple-api-mirror2&branch=main) for analysis

