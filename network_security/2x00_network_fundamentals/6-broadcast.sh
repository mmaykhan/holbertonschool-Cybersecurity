#!/bin/bash
IFS='.' read -r a b c d <<< "$1" && ip=$(( (a<<24)|(b<<16)|(c<<8)|d )) && IFS='.' read -r a b c d <<< "$2" && mask=$(( (a<<24)|(b<<16)|(c<<8)|d )) && bc=$(( ip|(~mask&0xFFFFFFFF) )) && printf "%d.%d.%d.%d" $(( (bc>>24)&255 )) $(( (bc>>16)&255 )) $(( (bc>>8)&255 )) $(( bc&255 ))
