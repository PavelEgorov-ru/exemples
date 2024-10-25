#!/bin/sh

YEAR=37
NAME=$1
if [ $# -gt 0 ]; then
    echo "Привет! Меня зовут $1, мне $YEAR лет."
else
    echo "Введи свое имя, чтобы я поздоровалась"
fi
