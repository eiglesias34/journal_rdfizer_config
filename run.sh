#!/bin/bash
declare -a arr=("inner" "outer" "inner-outer")


for j in "${arr[@]}"
do
	cp $j/*.csv .
	python /Users/maria-esthervidal/Documents/docker/rdfizer/rdfizer/run_rdfizer.py /Users/maria-esthervidal/Documents/docker/rdfizer-testbed/duplicates/config_duplicates.ini
	cp graph/stats.csv graph/$j-stats.csv
	cp graph/duplicates_datasets_stats.csv graph/$j-duplicates_datasets_stats.csv
	cp graph/duplicates.nt graph/$j-no-duplicates.nt
	rm *.csv
done

for j in "${arr[@]}"
do
	cp $j/*.csv .
	python /Users/maria-esthervidal/Documents/docker/rdfizer/rdfizer/run_rdfizer.py /Users/maria-esthervidal/Documents/docker/rdfizer-testbed/duplicates/config_duplicates.ini
	cp graph/stats.csv graph/$j-stats.csv
	cp graph/duplicates_datasets_stats.csv graph/$j-duplicates_datasets_stats.csv
	cp graph/duplicates.nt graph/$j-no-duplicates.nt
	rm *.csv
done