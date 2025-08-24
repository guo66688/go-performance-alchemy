# note: call scripts from /scripts
APP_NAME ?= go_performance_alchemy
BIN_DIR  ?= bin
CMD_DIR  ?= cmd/$(APP_NAME)
BIN_PATH ?= $(BIN_DIR)/$(APP_NAME)

GO      ?= go
GOFLAGS ?=
LDFLAGS ?=

.PHONY: build-baseline run clean fmt vet

build-baseline:
	@mkdir -p $(BIN_DIR)
	$(GO) build $(GOFLAGS) -ldflags "$(LDFLAGS)" -o $(BIN_PATH) ./$(CMD_DIR)

run: build-baseline
	./$(BIN_PATH)

fmt:
	$(GO) fmt ./...

vet:
	$(GO) vet ./...

clean:
	@rm -rf $(BIN_DIR)
