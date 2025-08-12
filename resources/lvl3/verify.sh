#!/bin/bash

if cmp -s "file_2" ".tmp"; then
    echo "Success"
else
    echo "Not yet."
fi