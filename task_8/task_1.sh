#!/bin/bash
awk -F'\t' '{print $1 + $2 + $3}' fin > fout

