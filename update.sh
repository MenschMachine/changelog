#!/bin/bash

for i in `cat submodules.txt`; do
    dirname=`echo "$i" |sed 's/git.*\(pdfdancer-.*\).git/\1/'`
    rm -rf "$dirname"
    git clone --no-checkout --filter=blob:none $i  `echo $i|sed 's|git.*Machine/\(.*\)\.git|\1|g'`
done
