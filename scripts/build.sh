#!/bin/bash
mkdir -p windows && mkdir -p linux && mkdir -p darwin
CGO_ENABLED=0 GOOS=windows go build -a -tags netgo -ldflags '-w' -o windows/vorteil.exe
CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' -o linux/vorteil
CGO_ENABLED=0 GOOS=darwin go build -a -tags netgo -ldflags '-w' -o darwin/vorteil
