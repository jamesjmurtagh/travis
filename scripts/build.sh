#!/bin/bash
if [ $TRAVIS_OS_NAME = 'osx' ]; then

    CGO_ENABLED=0 GOOS=darwin go build -a -tags netgo -ldflags '-w' -o vorteil

else

    CGO_ENABLED=0 GOOS=windows go build -a -tags netgo -ldflags '-w' -o vorteil.exe
    CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' -o vorteil

fi
