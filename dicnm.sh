declare -A student=([name]="shiv" [roll_no]=123 [branch]="cse")
#echo ${student[@]}
student+=([name]="leela")
echo ${student[@]}

