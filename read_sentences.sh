# read file from first argument into array
array=()
while IFS= read -r line; do
  array+=("$line")
done < "$1"

# check if time argument is provided (default 120)
if [ "$2" != "" ]; then
	time=$2
else
	time=120
fi

# iterate
for sentence in "${array[@]}":
do
	say "${sentence}"
	echo "${sentence}"
	date
	sleep $time
done

say "all done!"
