#!/usr/bin/env bash

latest=`git tag|grep -E "^$version"|sort -r|head -n 1`
if [ -z "$latest" ]
then
    echo "not found right tag to build"
fi
echo "use latest tag $latest"

export GOOS=linux; export GOARCH=amd64; go build -o bin/redis-cli-"$latest"-"$GOOS"-"$GOARCH" github.com/holys/redis-cli
export GOOS=darwin; export GOARCH=amd64; go build -o bin/redis-cli-"$latest"-"$GOOS"-"$GOARCH" github.com/holys/redis-cli
export GOOS=windows; export GOARCH=amd64; go build -o bin/redis-cli-"$latest"-"$GOOS"-"$GOARCH" github.com/holys/redis-cli
echo "build release done"