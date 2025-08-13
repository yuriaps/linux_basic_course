#!/bin/bash

# Prompt the user for a path, with a default value
read -p "Enter the path [~/linux_course]: " root_path

# If the input is empty, set root_path to the default value ~/linux_course
if [ -z "$root_path" ]; then
    root_path="~/linux_course"
fi

# Expand ~ to the full home directory path
root_path=$(eval echo "$root_path")

# Validate root_path to prevent dangerous deletions
if [ -z "$root_path" ] || [ "$root_path" = "/" ] || [ "$root_path" = "$HOME" ]; then
    echo "Error: Invalid or dangerous path: $root_path"
    exit 1
fi

# Display the value of root_path for confirmation
echo "Root path set to: $root_path"

# Confirm before cleaning previous setups
if [ -d "$root_path" ]; then
    read -p "Directory $root_path exists. Delete it? (y/N): " confirm
    if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
        rm -rf "$root_path" || { echo "Error: Failed to remove $root_path"; exit 1; }
    else
        echo "Aborting setup to avoid overwriting $root_path"
        exit 1
    fi
fi

# Basic setup
mkdir -p "$root_path" || { echo "Error: Failed to create $root_path"; exit 1; }
if [ -d "./resources" ]; then
    cp -r "./resources" "$root_path/resources" || { echo "Error: Failed to copy resources"; exit 1; }
else
    echo "Warning: ./resources does not exist, skipping copy"
fi
cd "$root_path" || { echo "Error: Failed to change to $root_path"; exit 1; }
mkdir -p level_{1..20} || { echo "Error: Failed to create level directories"; exit 1; }



#lvl 1
lvl_n=1
cd level_$lvl_n
echo "Hi this is the" > file_1
echo "course of linux." > file_2
cd ..

#lvl 2
lvl_n=2
cd level_$lvl_n
cp ../level_1/file_1 ../level_1/file_2 .
cp ../resources/lvl$lvl_n/tmp3 .tmp_3
cp ../resources/lvl$lvl_n/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 3
lvl_n=3
cd level_$lvl_n
cp ../resources/lvl$lvl_n/file1 file_1 
cp ../resources/lvl$lvl_n/tmp .tmp
cp ../resources/lvl$lvl_n/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 4
lvl_n=4
cd level_$lvl_n
cp ../resources/lvl$lvl_n/file1 file_1 
cp ../resources/lvl$lvl_n/tmp .tmp
cp ../resources/lvl$lvl_n/verify.sh check.sh
chmod +x ./check.sh
cd ..

#lvl 5
lvl_n=5
cd level_$lvl_n
chmod +x ../resources/lvl$lvl_n/create_files.sh
bash ../resources/lvl$lvl_n/create_files.sh
cd ..

#lvl 6
lvl_n=6
cd level_$lvl_n
chmod +x ../resources/lvl$lvl_n/create_files.sh
bash ../resources/lvl$lvl_n/create_files.sh
cd ..


echo "Setup completed successfully in $root_path"

# Run unit test if 'debug' argument is provided
if [ "$1" = "debug" ]; then
    echo "Running unit test..."
    test_file="$root_path/level_5/dir_6/dir_7/file_9"
    if [ -f "$test_file" ]; then
        if grep -q "Success" "$test_file"; then
            echo "[ok] Passed: $test_file contains 'Success'"
        else
            echo "[!] Failed: $test_file does not contain 'Success'"
            exit 1
        fi
    else
        echo "[!] Failed: $test_file does not exist"
        exit 1
    fi
    test_file="$root_path/level_6/dir_9/dir_4/file_7"
    if [ -f "$test_file" ]; then
        if grep -q "Success" "$test_file"; then
            echo "[ok] Passed: $test_file contains 'Success'"
        else
            echo "[!] Failed: $test_file does not contain 'Success'"
            exit 1
        fi
    else
        echo "[ok] Failed: $test_file does not exist"
        exit 1
    fi
    echo ">> Finished tests"
fi


