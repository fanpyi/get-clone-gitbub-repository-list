#!/bin/bash
currentPath=$PWD 
repURLsFileName='repositorys.txt'
cd $HOME/Desktop/gclone
i=0
for file in $(ls); do
	let i++
	cd $file 
	git remote -v | grep 'fetch' | awk '{print $2}' >> ${currentPath}/${repURLsFileName}
 	cd ../
done
echo "Total: ${i}" >>${currentPath}/${repURLsFileName}