# Ensure 2 positional args given
if [ $# -ne 2 ]
	then
		echo "usage: bash goostats \"input_file\" correct_line_count"
	exit
fi

# How to run:
# arg1: filenames using wildcard, place in doublequotes
# ard2: correct line count per file
for filename in $1
	do
		LINECOUNT=$(wc -l < $filename)
			if [ $LINECOUNT -ne $2 ]
				then
					echo "Error: $filename does not have $2 lines but has $LINECOUNT lines."
				else
					echo "bash goostats $filename stats-$filename"
			fi
		#echo $LINECOUNT
done
