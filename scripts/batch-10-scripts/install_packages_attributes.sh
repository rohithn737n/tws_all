#!/bin/bash

echo "Installing the requested package"

sudo apt-get update && sudo apt-get install $1 -y #-y is to answer the question in prompt asked if we should install or not
echo "successfully installed package $1"
