#!/bin/bash

go get github.com/uber/go-torch

go get -u github.com/kisielk/errcheck

go get -u -v github.com/gobuffalo/buffalo/buffalo

# re-enable intellisense for vscode after go upgrade
gocode close
go get -u github.com/nsf/gocode
