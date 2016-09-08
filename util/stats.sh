#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 FILE"
    echo "Example: $0 ../2016/README.md"
    exit
fi

FILE=$1
total_books=`grep -F "1. " $FILE | wc -l`

echo "================================================"
echo "Total $total_books books:"

echo "=====================Books======================"
grep -F "1. " $FILE
echo "================================================"
