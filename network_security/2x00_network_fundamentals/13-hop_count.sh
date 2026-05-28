#!/bin/bash
tracepath -n "$1" | awk '/Resume:/ {print $2}' || tracepath -n "$1" | grep -o '^[ 0-9]*:' | tail -n 1 | tr -d ' :'
