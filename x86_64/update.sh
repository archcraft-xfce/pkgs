#!/usr/bin/env bash

## Update Repository Database

repoargs=("-n -R archcraft.db.tar.gz *.pkg.tar.zst")

# Delete Existing Database Files
echo "Deleting Existing Database..."
rm -f archcraft.*
sleep 2

# Updating Database
echo "Updating Repository Database..."
repo-add $repoargs
sleep 2

echo "Repository Database is Updated!"
exit
