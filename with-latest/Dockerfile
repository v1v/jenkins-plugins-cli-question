FROM jenkins/jenkins:2.252

## jenkins-plugin-cli is not accessible for 2.252
COPY bin/* /bin/
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
RUN jenkins-plugin-cli --verbose --latest true -f /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --list --verbose
