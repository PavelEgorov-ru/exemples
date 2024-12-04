#!/bin/sh


while read a b; do
    res='echo $a | ./diamond_tests'
    if [ "$b" != x"$res"]; then
        echo "TEST сломан"
    else
        echo "Все хорошо"
    fi
done << END
    5 5
    4 4
    9 9
    11 11
END
