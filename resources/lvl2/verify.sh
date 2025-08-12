#!/bin/bash

if cmp -s "file_3" ".tmp_3"; then
    echo "Success"
else
    echo "Not yet."
fi