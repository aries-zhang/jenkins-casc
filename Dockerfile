FROM jenkinsci/blueocean
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV CASC_JENKINS_CONFIG="/var/jenkins_home/jenkins.yml"
RUN /usr/local/bin/install-plugins.sh configuration-as-code:latest \
                                      configuration-as-code-support:latest \
                                      job-dsl:latest
COPY jenkins.yaml /var/jenkins_home/jenkins.yml