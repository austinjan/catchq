.PHONY: default
ifeq ($(OS),Windows_NT)
EXE=.exe
endif

ifeq ($(shell uname),Linux)
EXE=
endif

default:
	make -C cli

lint:
	go vet ./...

