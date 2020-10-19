#!/bin/bash

# Sample CL entry to print hello world message
## --message= greeting message
## --audience= who to greet

# Default Message
MESSAGE="Hello,"

# Argument Parsing
for i in "$@"; do
case $i in
    -a|--audience=*)
    AUDIENCE="${i#*=}"
    shift
    ;;
    -m|--message=*)
    MESSAGE="${i#*=}"
    shift
    ;;
    *)
    shift
    ;;
esac
done

echo "${MESSAGE} ${AUDIENCE}"
