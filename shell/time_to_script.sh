# Программа замеряет время исполнения и выводит разницу в секундах
START=$(date +%s)
I=2000000

while [ $I -gt 1 ]; do 
    echo $I
    I=$((I - 1))
done

END=$(date +%s)

echo "старт $START"
echo "конец $END"
echo "разница $((END - START))"

