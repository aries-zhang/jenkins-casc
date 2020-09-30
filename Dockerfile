FROM jenkins/jenkins:latest
ARG  CURL_OPTIONS
RUN  /usr/local/bin/install-plugins.sh blueocean:latest \
                                       configuration-as-code:latest \
                                       workflow-aggregator:latest \
                                       job-dsl:latest \ 
                                       kubernetes:latest \
                                       hashicorp-vault-plugin \
                                       prometheus
