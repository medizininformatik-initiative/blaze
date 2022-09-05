FROM samply/blaze:0.17

USER root

RUN set -eux; apt install -y zip; apt clean all
COPY search-parameters.json /app/blaze/db/
RUN zip blaze-standalone.jar blaze/db/search-parameters.json

USER 1001
