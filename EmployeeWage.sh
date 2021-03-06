#!/bin/bash -x

FULLWORKDAYHOUR=8
WAGEPERHOUR=20
ISFULLTIME=1
ISPARTTIME=2
PARTTIMEWORKHOUR=4

totalEmployeeHours=0
totalworkingdays=0
numWorkingDays=20
minworkhours=100

declare -A empdailywage

function workhours()
	{
		case $1 in $ISFULLTIME)
   	workhrs=8
		;;
		$ISPARTTIME)
   	workhrs=4
		;;
		*)
   	workhrs=0
		;;
		esac
		echo $workhrs
	}

function dailywage()
{
	local workhrs=$1
	dailywage=$(($workhrs*$WAGEPERHOUR))
	echo $dailywage
}

while [[ $totalEmployeeHours -lt $minworkhours && $totalworkingdays -lt $numWorkingDays ]]
do
   ((totalworkingdays++))
   workhrs="$( workhours $((RANDOM%3)) )"
   totalEmployeeHours=$(($totalEmployeeHours+$workhrs))
   empdailywage[Day"$totalworkingdays"]="$(dailywage $workhrs)"
done
totalSalary=$(($totalEmployeeHours*$WAGEPERHOUR))
echo "DailyWage"${empdailywage[@]}
echo ${!empdailywage[@]}

