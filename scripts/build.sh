#!/usr/bin/env bash
set -ex

ROOTDIR="$( dirname "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" )"
BINDIR=$ROOTDIR/bin

export GOPATH=$ROOTDIR
export GOOS=linux

go build -ldflags="-s -w" -o $BINDIR/supply ruby/supply/cli
go build -ldflags="-s -w" -o $BINDIR/finalize ruby/finalize/cli
