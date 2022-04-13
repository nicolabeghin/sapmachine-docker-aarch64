ACCOUNT := nicolabeghin
REPOSITORY := sapmachine-aarch64
MAJOR_VERSION := 11
MINOR_VERSION := 11.0.15


# all our targets are phony (no files to check).
.PHONY: build publish

# suppress makes own output
#.SILENT:

help:
	@echo 'Usage: make [TARGET]                                             '
	@echo '  build                 Build image    							'	 	
	@echo '  publish               Publish to DockerHub      				'


build:
	docker build -t ${ACCOUNT}/${REPOSITORY}:${MAJOR_VERSION} -t ${ACCOUNT}/${REPOSITORY}:${MINOR_VERSION} .
	
publish:
	docker login
	docker push ${ACCOUNT}/${REPOSITORY}:${MAJOR_VERSION}
	docker push ${ACCOUNT}/${REPOSITORY}:${MINOR_VERSION}