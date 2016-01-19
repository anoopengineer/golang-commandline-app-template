build:
	@echo "About to get goxc"
	@go get github.com/laher/goxc
	@echo "Building..."
	@GO15VENDOREXPERIMENT=1  goxc -q
	@echo "Build complete"

dist:
	@echo "About to get goxc"
	@go get github.com/laher/goxc
	@echo "Bumping version"
	@goxc -q bump
	@echo "Building..."
	@GO15VENDOREXPERIMENT=1  goxc -q
	@echo "Build complete"
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
