FROM jenkins/jenkins:2.252

## jenkins-plugin-cli is not accessible for 2.252
COPY bin/* /bin/
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
RUN jenkins-plugin-cli --latest true --plugins workflow-basic-steps
RUN jenkins-plugin-cli --list
