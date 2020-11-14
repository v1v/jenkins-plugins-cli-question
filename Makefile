.PHONE: with-latest without-latest prepare

prepare:
	curl -fsSL https://github.com/jenkinsci/plugin-installation-manager-tool/releases/download/2.1.1/jenkins-plugin-manager-2.1.1.jar \
		 -o bin/jenkins-plugin-manager.jar

with-latest: prepare
	docker build --tag with-latest -f with-latest/Dockerfile .
	docker run --rm -ti -p 18080:8080 with-latest

without-latest: prepare
	docker build --tag without-latest -f without-latest/Dockerfile .
	docker run --rm -ti -p 28080:8080 without-latest