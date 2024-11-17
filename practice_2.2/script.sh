#!/bin/bash
file_path="$PWD/somefile"
file --mime-type "$file_path" | sed "s|$file_path|somefile|"