#!/bin/bash

read -p "Enter the URL link: " url

download_dir="downloaded_files"
mkdir -p "$download_dir" || exit 1

if wget -r -P "$download_dir" -A jpeg,jpg,png,mp4 "$url"; then
    echo "Files downloaded successfully."
else
    echo "Download failed or no files downloaded."
fi