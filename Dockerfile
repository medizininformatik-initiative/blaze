FROM samply/blaze:0.13.4

USER root

RUN set -eux; microdnf install zip; microdnf clean all
COPY search-parameters.json /app/blaze/db/
RUN zip blaze-standalone.jar blaze/db/search-parameters.json

USER 1001
