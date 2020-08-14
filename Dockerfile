FROM jenkinsci/blueocean:latest
ARG  CURL_OPTIONS
RUN  /usr/local/bin/install-plugins.sh configuration-as-code:latest \
                                       workflow-aggregator:latest \
                                       job-dsl:latest \ 
                                       kubernetes:latest