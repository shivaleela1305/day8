declare -A birth_months

for ((i = 1; i <= 50; i++)); do
birth_month=$((1 + RANDOM % 12))
birth_year=$((1992 + RANDOM % 2))
birth_date=$(printf "%02d-%02d" $birth_month $birth_year)

if [ -z "${birth_months[$birth_date]}" ]
then
birth_months[$birth_date]=$i
else
birth_months[$birth_date]="${birth_months[$birth_date]}, $i"
fi
done

for month in "${!birth_months[@]}"
do
individuals="${birth_months[$month]}"
echo "Birth month $month: Individuals $individuals"
done
