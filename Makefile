GOVERSION:="1.25.4"
VERSION:="0.37.0"

all: 
	make go-version-set upgrade tests

go-version-set:
	@g use ${GOVERSION}

upgrade:
	@echo "Updating go tools"
	@go get -v golang.org/x/tools@v${VERSION}
	@go mod tidy

tests:
	@go test -v ./...