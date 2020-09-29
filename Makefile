.PHONY: all bin

ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all: bin

clean:
	@echo clean build directory...
	@rm -rf $(ROOT_DIR)/bin/*
	@echo clean build directory done...

kafka-bridge_exporter:
	@echo build kafka-bridge_exporter...
	@GO111MODULE=off go build -o $(ROOT_DIR)/bin/kafka-bridge_exporter
	@echo build kafka-bridge_exporter done...

bin: kafka-bridge_exporter
