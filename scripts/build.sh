#!/bin/bash
CGO_ENABLED=0 GOOS=windows go build -a -tags netgo -ldflags '-w' -o vorteil-windows.exe
CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' -o vorteil-linux
CGO_ENABLED=0 GOOS=darwin go build -a -tags netgo -ldflags '-w' -o vorteil-darwin
