declare -A student=([name]="shiv" [roll_no]=123 [branch]="cse")
#echo ${student[@]}
for key in ${!student[@]}
do
echo $key
done

