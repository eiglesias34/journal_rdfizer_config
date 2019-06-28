declare -a arr=("RMLTC0000" "RMLTC0001a" "RMLTC0001b" "RMLTC0002a" "RMLTC0002b" "RMLTC0002c" "RMLTC0002e" "RMLTC0003c" "RMLTC0004a" "RMLTC0004b" "RMLTC0005a" "RMLTC0006a" "RMLTC0007a" "RMLTC0007b" "RMLTC0007c" "RMLTC0007d" "RMLTC0007e" "RMLTC0007f" "RMLTC0007g" "RMLTC0007h" "RMLTC0008a" "RMLTC0008b" "RMLTC0008c" "RMLTC0009a" "RMLTC0009b" "RMLTC0010a" "RMLTC0010b" "RMLTC0010c" "RMLTC0011b" "RMLTC0012a" "RMLTC0012b" "RMLTC0012c" "RMLTC0012d" "RMLTC0015a" "RMLTC0015b" "RMLTC0019a" "RMLTC0019b" "RMLTC0020a" "RMLTC0020b")
declare -a format=("CSV" "JSON" )


for j in "${arr[@]}"
do
	for k in "${format[@]}"
	do
		echo $j$k.ini
		python3 /home/mvidal/Downloads/rdfizer/rdfizer/run_rdfizer.py /home/mvidal/Downloads/journal_rdfizer_config-master/$j-$k.ini
	done
done

python3 /home/mvidal/Downloads/rdfizer/rdfizer/run_rdfizer.py /home/mvidal/Downloads/journal_rdfizer_config-master/RMLTC0002g.ini
python3 /home/mvidal/Downloads/rdfizer/rdfizer/run_rdfizer.py /home/mvidal/Downloads/journal_rdfizer_config-master/RMLTC0013a.ini