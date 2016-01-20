DOCKER_IMAGE_NAME = "ENTER_YOUR_REPO_NAME_HERE"
VERSION = $(shell grep "PackageVersion" .goxc.json | awk '{split($$0,a,":"); print a[2]}' | sed -e 's/[", ]/''/g')

build:clean
	@echo "About to get goxc"
	@go get github.com/anoopengineer/goxc
	@echo "Building..."
	@GO15VENDOREXPERIMENT=1  goxc -q
	@echo "Build complete"

dist:
	@echo "About to get goxc"
	@go get github.com/anoopengineer/goxc
	@echo "Bumping version"
	@goxc -q bump
	@echo "Building..."
	@GO15VENDOREXPERIMENT=1  goxc -q -tasks+=publish-github
	@echo "DIST Build complete"
	git commit -am "Minor version change"


clean:
	@echo "Deleting target directory"
	@rm -rf target
	@echo "Done"

godep-save:
	@echo "Saving dependencies using godep"
	@go get github.com/tools/godep
	GO15VENDOREXPERIMENT=1 godep save ./...
	@echo "Done"


docker-image:build
	@#docker build -t $(DOCKER_IMAGE_NAME):$(VERSION) --rm .
	@echo $(DOCKER_IMAGE_NAME)
	@echo $(VERSION)
	docker build -t $(DOCKER_IMAGE_NAME):$(VERSION) --rm .
	docker push $(DOCKER_IMAGE_NAME):$(VERSION)
