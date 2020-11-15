FROM jenkins/jenkins:2.252

## jenkins-plugin-cli is not accessible for 2.252
COPY bin/* /bin/
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --verbose --latest true --plugins ansicolor:0.5.3 blueocean workflow-basic-steps
