declare -A student=([name]="shiv" [roll_no]=123 [branch]="cse")
student+=([email]="shiv@gmail.com")
echo ${student[@]}
