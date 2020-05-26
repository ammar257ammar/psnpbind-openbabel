#!/bin/bash

cd /pdb

for f in *; do

	cd $f/splitted
	
	for p in *.mol2; do

		mol="${p%.*}"

		obabel ${p} -O ${mol}_min.mol2 --minimize --ff MMFF94 --steps 2500 --sd

	done

	cd ../..

done


