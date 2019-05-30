#!/bin/bash

     set -eux pipefail
           git config --global user.email "ci@localhost"
           git config --global user.name "CI Bot"
           git clone git_push git_push_modified
           pushd git_push_modified
           echo "adding new file" > file1.txt
           git add -A && git commit -m "Added New file"
