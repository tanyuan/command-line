#!/bin/bash

# Rename file: replace whitespaces with underscores

mv "$1" `echo $1 | tr ' ' '_'` 
