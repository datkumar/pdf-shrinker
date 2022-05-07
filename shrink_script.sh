#!/bin/sh

# Store paths to all existing pdf files in current directory
#  & sub-directories inside the file "pdf_file_list.txt" 
find . -name "*.pdf" -fprint "orig_file_paths.txt"


while read -r line; do
    # Get original file's name & add '_compressed' before '.pdf'
    orig_file_name="$line"
    new_file_name=$(echo $orig_file_name | sed 's/.pdf/_compressed.pdf/');
    # echo $new_file_name
    
    # Compress the original file into new file
    ps2pdf -dPDFSETTINGS=/ebook "$orig_file_name" "$new_file_name"
    
    # Check exit code of compress command
    if [ $? -eq 0 ] 
    then    # SUCCESS
        echo "\n------- Successfully compressed file: $orig_file_name -------\n"
    else    # ERROR
        echo "\n------- ERROR occured while compressing -------\n" >&2 
    fi

done < "orig_file_paths.txt"


rm "orig_file_paths.txt"
echo "\n------- ALL OPERATIONS SUCCESSFUL -------\n"