#!/bin/bash

cd /pdb

for f in *; do

	cd $f

	mkdir results
	mkdir splitted
	mkdir splitted-smi
	mkdir logs
	
	for p in *.sdf; do

		mol="${p%.*}"

		obabel /index/chembl_25_from_sdf.fs -O results/${mol}_similar.sdf -s ${p} -at0.6

		babel ${p} results/${mol}_similar.sdf -ofpt > logs/${mol}.log

		obabel results/${mol}_similar.sdf -omol2 -O splitted/${mol}_similar_*.mol2 --split
		obabel results/${mol}_similar.sdf -osmi -O splitted-smi/${mol}_similar_*.smi --split
	done

	cd ..

done


