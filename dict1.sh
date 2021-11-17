#!/bin/bash

isRandom=1
isOne=0
isTwo=0
isThree=0
isFour=0
isFive=0
isSix=0

declare -A diceRollDict

while [ $isRandom -eq 1 ]
do
        random=$(( (RANDOM%6)+1 ))
        if [ $random -eq 1 ]
        then
                ((isOne++))
                diceRollDict[one$isOne]=$random
        elif [ $random -eq 2 ]
        then
                ((isTwo++))
                diceRollDict[two$isTwo]=$random
        elif [ $random -eq 3 ]
        then
                ((isThree++))
                diceRollDict[three$isThree]=$random
        elif [ $random -eq 4 ]
        then
                ((isFour++))
                diceRollDict[four$isFour]=$random
        elif [ $random -eq 5 ]
        then
                ((isFive++))
                diceRollDict[five$isFive]=$random
        elif [ $random -eq 6 ]
        then
                ((isSix++))
                diceRollDict[six$isSix]=$random
        fi

        if [ $isOne -eq 10 ] || [ $isTwo -eq 10 ] || [ $isThree -eq 10 ] || [ $isFour -eq 10 ] || [ $isFive -eq 10 ] || [ $isSix -eq 10 ]
        then
                isRandom=0
        fi

done

echo ${diceRollDict[@]}

if [ $isOne -gt $isTwo ] && [ $isOne -gt $isThree ] && [ $isOne -gt $isFour ] && [ $isOne -gt $isFive ] && [ $isOne -gt $isSix ]
then
        echo "One reached greatest time."
elif [ $isTwo -gt $isOne ] && [ $isTwo -gt $isThree ] && [ $isTwo -gt $isFour ] && [ $isTwo -gt $isFive ] && [ $isTwo -gt $isSix ]
then
        echo "Two reached greatest time."
elif [ $isThree -gt $isTwo ] && [ $isThree -gt $isOne ] && [ $isThree -gt $isFour ] && [ $isThree -gt $isFive ] && [ $isThree -gt $isSix ]
then
        echo "Three reached greatest time."
elif [ $isFour -gt $isTwo ] && [ $isFour -gt $isThree ] && [ $isFour -gt $isOne ] && [ $isFour -gt $isFive ] && [ $isFour -gt $isSix ]
then
        echo "Four reached greatest time."
elif [ $isFive -gt $isTwo ] && [ $isFive -gt $isThree ] && [ $isFive -gt $isFour ] && [ $isFive -gt $isOne ] && [ $isFive -gt $isSix ]
then
        echo "Five reached greatest time."
elif [ $isSix -gt $isTwo ] && [ $isSix -gt $isThree ] && [ $isSix -gt $isFour ] && [ $isSix -gt $isFive ] && [ $isSix -gt $isOne ]
then
        echo "Six reached greatest time."
fi


if [ $isOne -le $isTwo ] && [ $isOne -le $isThree ] && [ $isOne -le $isFour ] && [ $isOne -le $isFive ] && [ $isOne -le $isSix ]
then
        echo "One reached lowest time."
elif [ $isTwo -le $isOne ] && [ $isTwo -le $isThree ] && [ $isTwo -le $isFour ] && [ $isTwo -le $isFive ] && [ $isTwo -le $isSix ]
then
        echo "Two reached greatest time."
elif [ $isThree -le $isTwo ] && [ $isThree -le $isOne ] && [ $isThree -le $isFour ] && [ $isThree -le $isFive ] && [ $isThree -le $isSix ]
then
        echo "Three reached lowest time."
elif [ $isFour -le $isTwo ] && [ $isFour -le $isThree ] && [ $isFour -le $isOne ] && [ $isFour -le $isFive ] && [ $isFour -le $isSix ]
then
        echo "Four reached lowest time."
elif [ $isFive -le $isTwo ] && [ $isFive -le $isThree ] && [ $isFive -le $isFour ] && [ $isFive -le $isOne ] && [ $isFive -le $isSix ]
then
        echo "Five reached lowestt time."
elif [ $isSix -le $isTwo ] && [ $isSix -le $isThree ] && [ $isSix -le $isFour ] && [ $isSix -le $isFive ] && [ $isSix -le $isOne ]
then
        echo "Six reached lowest time."
fi
