FROM jenkins/jenkins:lts
COPY plugins /usr/share/jenkins/ref/plugins.list
COPY jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.list