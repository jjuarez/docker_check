ORG       := jjuarez
NAME      := ${ORG}/docker_check
VERSION   := '0.1.2'
CHANGESET := $$(git rev-parse HEAD)

build:
	@DOCKER_BUILDKIT=1 docker build -t ${NAME}:${CHANGESET} -t ${NAME}:${VERSION} -t ${NAME}:latest .

push:
	@docker push ${NAME}
