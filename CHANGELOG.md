# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] - 2025-02-20

### Added


### Changed

* username to `runner` (help from Grok 3)


### Deprecated


### Removed


### Fixed


### Security


## [v0.1.0] - 2025-02-20

### Added
* Added Docker build and publish workflows for both manual triggering and release creation.  This includes workflows for pushing to both Docker Hub and Github Container Registry (GHCR).  The workflows utilize buildx for multi-platform builds (linux/amd64, linux/arm64) and automatically tags images with major, minor, version, and latest tags.  Credentials for Docker Hub and GHCR are managed via Github secrets and variables.
* Added a `Dockerfile` for containerizing the application. The image is based on `python:3.11.11-slim` and uses a non-root user for enhanced security.
* Added a `.gitignore` file to exclude unnecessary files and directories from version control.
* Added a `LICENSE` file with a BSD 3-Clause License + Do Not Harm clause.
* Added a `requirements.txt` file listing project dependencies (pytest, pytest-json-report, pytest-xdist).


### Changed


### Deprecated


### Removed


### Fixed


### Security
