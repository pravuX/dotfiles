#!/bin/sh

# get current brightness value
brightness=$(light -G)
echo "percent|range:0-100|${brightness%%.*}"
echo ""
