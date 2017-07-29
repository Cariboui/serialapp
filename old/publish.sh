#!/usr/bin/env bash

# The options:
# v - verbose
# z - compress data
# c - checksum, use checksum to find file differences
# r - recursive
# S - handle sparse files efficiently
# L - follow links to copy actual files
# h - show numbers in human-readable format
# --exclude - Exclude files from being uploaded. You can use multiple --exclude flags

rsync --exclude="publish.sh" --exclude=".git" -vzcrSLh ./ serial-app:~/serialapp.com/current/public
