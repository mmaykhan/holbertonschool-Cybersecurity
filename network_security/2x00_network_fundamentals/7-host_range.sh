#!/bin/bash
ipcalc -b "$1/$2" | awk '/HostMin/ {min=$2} /HostMax/ {max=$2} END {print min " - " max}'
