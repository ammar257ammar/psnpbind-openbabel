#!/bin/bash

cd /pdb

for f in *; do

	cd $f

	mkdir -p results
	mkdir -p results-smi
	mkdir -p splitted
	mkdir -p splitted-smi
	mkdir -p logs
	
	for p in *.sdf; do

		mol="${p%.*}"

		obabel /index/chembl_25.fs -O results/${mol}_similar.sdf -s ${p} -at0.6

		babel ${p} results/${mol}_similar.sdf -ofpt > logs/${mol}.log

		obabel results/${mol}_similar.sdf -osmi -O results-smi/${mol}_similar.smi
		
		obabel results/${mol}_similar.sdf -omol2 -O splitted/${mol}_similar_*.mol2 --split
		obabel results/${mol}_similar.sdf -osmi -O splitted-smi/${mol}_similar_*.smi --split
	done

	cd ..

done


