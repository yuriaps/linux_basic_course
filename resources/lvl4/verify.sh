#!/bin/bash

if cmp -s "file_1" ".tmp"; then
    echo "Success"
else
    echo "Not yet."
fi