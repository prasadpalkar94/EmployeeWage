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


while [[ $totalEmployeeHours -lt $minworkhours && $totalworkingdays -lt $numWorkingDays ]]
do
((totalworkingdays++))
employeeCheck=$((RANDOM%3))

case $employeeCheck in $ISFULLTIME)
	
	workhrs=8
;;
$ISPARTTIME)
	
	workhrs=4
;;
*)
	workhrs=0
;;
esac
totalEmployeeHours=$(($totalEmployeeHours+$workhrs))
done
totalSalary=$(($totalEmployeeHours*$WAGEPERHOUR))

