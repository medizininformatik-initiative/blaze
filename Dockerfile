FROM ghcr.io/samply/blaze:412866af58e82dbedee8363bfe3407ffecc12b40

USER root

RUN apt update && apt install -y zip
COPY search-parameters.json /app/blaze/db/
RUN zip blaze-standalone.jar blaze/db/search-parameters.json

USER 1001
