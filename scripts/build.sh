#!/bin/bash
if [ $TRAVIS_OS_NAME = 'osx' ]; then

    CGO_ENABLED=0 GOOS=darwin go build -a -tags netgo -ldflags '-w' -o vorteil
    tar -zcvf vorteil_darwin-x86.tar.gz vorteil && rm vorteil

else

    CGO_ENABLED=0 GOOS=windows go build -a -tags netgo -ldflags '-w' -o vorteil.exe
    zip vorteil_windows-x86.zip vorteil.exe && rm vorteil.exe
    CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' -o vorteil
    tar -zcvf vorteil_linux-x86.tar.gz vorteil && rm vorteil

fi
