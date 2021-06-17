FROM ghcr.io/samply/blaze:e91153ff6592a182e59f8bbfcd6beb784652fdf0

USER root

RUN apt update && apt install -y zip
COPY search-parameters.json /app/blaze/db/
RUN zip blaze-standalone.jar blaze/db/search-parameters.json

USER 1001
