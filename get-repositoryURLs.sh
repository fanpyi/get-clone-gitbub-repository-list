#!/bin/bash
currentPath=$PWD 
repURLsPath=${currentPath}/'repositorys.txt'
rm -rf $repURLsPath
cd $HOME/Desktop/gclone
i=0
for file in $(ls); do
	let i++
	cd $file 
	git remote -v | grep 'fetch' | awk '{print $2}' >> $repURLsPath
 	cd ../
done
echo "Total: ${i}" >>$repURLsPath