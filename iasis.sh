declare -a arr=("iasis" "iasis_no" )


for j in "${arr[@]}"
do
	python run_rdfizer.py /Users/maria-esthervidal/Documents/docker/rdfizer-testbed/duplicates/$j.ini
	cp graph/stats.csv graph/$j-stats.csv
done