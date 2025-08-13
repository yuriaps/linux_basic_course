#!/bin/bash

# Create 10 top-level directories (dir_1 to dir_10)
for i in {1..10}; do
    mkdir -p "dir_$i"
    
    # Create 10 subdirectories (tem_dir_1 to tem_dir_10) inside each dir_$i
    for j in {1..10}; do
        mkdir -p "dir_$i/dir_$j"
        
        # Create 10 files (file_1 to file_10) of 100 bytes inside each tem_dir_$j
        for k in {1..10}; do
            
            if [ "$i" -eq 6 ] && [ "$j" -eq 7 ] && [ "$k" -eq 9 ]; then
                echo "Success" > dir_$i/dir_$j/file_$k
            else
                # Use dd to create a file of exactly 100 bytes (filled with null bytes)
                dd if=/dev/urandom of="dir_$i/dir_$j/file_$k" bs=100 count=1 2>/dev/null
            fi
        done
    done
done