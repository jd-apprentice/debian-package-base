#!/bin/bash

# App name for multiples uses
app_name="debian-package-base"

# Starting message
echo "Building latest version of ${app_name}"

# Find version of the package and save it in a variable
file=$(find . -name 'control')
string="Version"

while read -r line; do
    if [[ $line =~ $string ]]; then
        version=${line:(-3):3}
    fi
done <$file

# We locate where the folder is located and move to it
folder=$(find $HOME -type d -name "${app_name}" -print | tail -n 1)
cd "$folder"

# We create a folder for the build and copy the entire file one level above
cd ..
mkdir -p -- "${version}-${app_name}"
copy=$(find $HOME -type d -name "${version}-${app_name}")
cp -r $folder/* "$copy"

# Move to the copy directory
cd "$copy"

# We remove git since we don't want it in the final build
# Also here remove anything not useful to the final build example images for the readme, markdown files, etc
rm -rf .git
rm *.md
rm LICENSE

# Move out of the copy directory
cd ..

# Build latest version of the package
dpkg --build "${version}-${app_name}"