#!/bin/bash
folder=$(basename "$PWD")
docker build . -t "alpine.3.5.2.node.6.2.0"
