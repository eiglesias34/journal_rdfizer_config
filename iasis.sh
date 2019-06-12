declare -a arr=("iasis" "iasis_no" )


for j in "${arr[@]}"
do
	python run_rdfizer.py $j.ini
	cp graph/stats.csv graph/$j-stats.csv
	rm graph/*.nt
done