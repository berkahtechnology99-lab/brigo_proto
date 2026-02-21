# direktori proto root
PROTO_DIR := proto

# direktori output generated Go
GEN_DIR := gen

# compiler
PROTOC := protoc

# ambil semua file proto
PROTO_FILES := $(shell find $(PROTO_DIR) -name "*.proto")

all: proto

proto:
	@echo "🚀 Generating protobuf (go + grpc + validate)..."
	@mkdir -p $(GEN_DIR)
	$(PROTOC) \
		--proto_path=$(PROTO_DIR) \
		--go_out=$(GEN_DIR) --go_opt=paths=import \
		--go-grpc_out=$(GEN_DIR) --go-grpc_opt=paths=import \
		--validate_out="lang=go,paths=import:$(GEN_DIR)" \
		$(PROTO_FILES)

clean:
	@echo "🧹 Cleaning generated files..."
	rm -rf $(GEN_DIR)

.PHONY: all proto clean