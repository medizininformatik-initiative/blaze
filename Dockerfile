FROM samply/blaze:0.12

USER root

RUN apt update && apt install -y zip
COPY search-parameters.json /app/blaze/db/
RUN zip blaze-standalone.jar blaze/db/search-parameters.json

USER 1001
