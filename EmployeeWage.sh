#!/bin/bash -x

FULLWORKDAYHOUR=8
WAGEPERHOUR=20
ISFULLTIME=1
ISPARTTIME=2
PARTTIMEWORKHOUR=4

echo "Welcome to EmployeeWage Computation Program"
EmployeeCheck=$((RANDOM%3))
if [ $EmployeeCheck -eq 0 ]
then 
	echo Employee Is Present
else
	echo Employee Is Absent
fi
DailyEmployeeWage=$(($WAGEPERHOUR*$FULLWORKDAYHOUR))

DailyWageforPartTime=$(($WAGEPERHOUR*$PARTTIMEWORKHOUR))

case  $EmployeeCheck in $ISFULLTIME)
	echo "FULL TIME EMPLOYEE"
	Salary=$(($WAGEPERHOUR*$FULLWORKDAYHOUR))
	Monthpay=$((20*$Salary))
;;
$ISPARTTIME)
	echo "PART TIME EMPLOYEE"
	Salary=$(($WAGEPERHOUR*$PARTTIMEWORKHOUR))
	Monthpay=$((20*$Salary))
;;
*)
	Salary=0
;;
esac

