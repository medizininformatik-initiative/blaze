FROM samply/blaze:0.20.0

USER root

RUN apt-get update && apt-get upgrade -y && \
    apt-get install zip -y && \
    apt-get autoremove -y && apt-get clean && \
    rm -rf /var/lib/apt/lists/

COPY search-parameters.json /app/blaze/db/
RUN zip blaze-0.20.0-standalone.jar blaze/db/search-parameters.json

USER 1001
