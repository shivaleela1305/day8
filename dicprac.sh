max_count=0
min_count=10
max_num=""
min_num=""

while true
do
roll=$((1 + RANDOM % 6))
results[$roll]=$((results[$roll] + 1))
if [ "${results[$roll]}" -ge 10 ]
then
break
fi
if [ "${results[$roll]}" -gt "$max_count" ]; then
max_count=${results[$roll]}
max_num=$roll
fi
if [ "${results[$roll]}" -lt "$min_count" ]
then
min_count=${results[$roll]}
min_num=$roll
fi
done

# Print the results
echo "Results:"
for num in "${!results[@]}"
do
echo "Number $num: ${results[$num]} times"
done
