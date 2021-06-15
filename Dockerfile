FROM ghcr.io/samply/blaze:cece0c068a6c04f9d255d4ab819461f45c9d16ff

USER root

RUN apt update && apt install -y zip
COPY search-parameters.json /app/blaze/db/
RUN zip blaze-standalone.jar blaze/db/search-parameters.json

USER 1001
