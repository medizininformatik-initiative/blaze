# MII Blaze

This repository contains a Blaze server image, which includes the search parameters necessary for the Medizininformatik Initiative feasibility project.

The image is based on Blaze [v0.20.2](https://github.com/samply/blaze/releases/tag/v0.20.2).

## Start locally

`docker-compose up -d`

## Build manually

`docker build -t blaze:0.20.2 .`

or using docker compose:

`docker-compose build`

## Initialise testdata

`bash init-testdata.sh`
