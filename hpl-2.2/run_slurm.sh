#!/bin/bash
#SBATCH -n 4

counter=0
filename="$1"
while read -r line
do
	counter=$((counter + 1))
    	name="$line"
	srun --mpi=pmi2 ./xhpl $counter $line > /dev/null < /dev/null
#	sleep 5
done < "$filename"
