declare -A student=([name]="shiv"[roll_no]=123[branch]="cse")
#echo ${student[@]}
for value in ${student[@]}
do
echo $value
done

