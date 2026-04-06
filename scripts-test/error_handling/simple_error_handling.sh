#!/bin/bash

touch new-file.txt || { echo "the file was not created"; echo "dhang se banao"; }
