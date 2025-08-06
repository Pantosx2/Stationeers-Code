#! /bin/bash

# This script checks if the compiler produced any files that are longer than 128 lines

for file in out/*.ic10; do
    # Check if the file actually exists (in case no .ic10 files are found)
    if [ -f "$file" ]; then
        if [ $(wc -l < "$file") -gt 128 ]; then
            echo -e "\033[33mWarning: \033[0m"
            echo -e "Produced file:\033[32m ${file#out/} \033[0mis longer than 128 lines"
        fi
    fi
done
