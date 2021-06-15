# Blaze Codex Project

This repsository builds a blaze server, which includes the search parameters neccessary for the codex project

## to start locally

`docker-compose up -d`

## To build manually

`docker build -t codex-blaze:0.0.1 .`

or using docker compose:

`docker-compose build`

## initialise testdata

`bash init-testdata.sh`