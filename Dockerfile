FROM ghcr.io/samply/blaze:d589524dc8ce77ee84055dbdfe98aec68703d416

USER root

RUN apt update && apt install -y zip
COPY search-parameters.json /app/blaze/db/
RUN zip blaze-standalone.jar blaze/db/search-parameters.json

USER 1001
