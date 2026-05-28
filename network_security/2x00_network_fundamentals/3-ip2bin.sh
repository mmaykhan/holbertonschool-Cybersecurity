#!/bin/bash
for o in $(echo "$1" | tr '.' ' '); do printf "%08d" $(echo "obase=2; $o" | bc); done | sed 's/\([01]\{8\}\)/\1./g' | sed 's/\.$/\n/'
