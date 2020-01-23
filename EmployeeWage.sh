#!/bin/bash -x
echo "Welcome to EmployeeWage Computation Program"
EmployeeCheck=$((RANDOM%2))
if [ $EmployeeCheck -eq 0 ]
then 
	echo Employee Is Present
else
	echo Employee Is Absent
fi
WAGEPERHOUR=20
FULLWORKDAYHOUR=8
DailyEmployeeWage=$(($WAGEPERHOUR*$FULLWORKDAYHOUR))
PARTTIMEWORKHOUR=4
DailyWageforPartTime=$(($WAGEPERHOUR*$PARTTIMEWORKHOUR))
ISFULLTIME=1
ISPARTTIME=0
case  $EmployeeCheck in $ISFULLTIME)
echo "FULL TIME EMPLOYEE"
Salary=$(($WAGEPERHOUR*$FULLWORKDAYHOUR))
;;
$ISPARTTIME)
echo "PART TIME EMPLOYEE"
Salary=$(($WAGEPERHOUR*$PARTTIMEWORKHOUR))
;;
*)
Salary=0
;;
esac

