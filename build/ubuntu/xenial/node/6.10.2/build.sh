#!/bin/bash
folder=$(basename "$PWD")
docker build . -t $folder 
