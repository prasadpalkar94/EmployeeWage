#!/bin/bash -x
echo "Welcome to EmployeeWage Computation Program"
EmployeeCheck=$((RANDOM%2))
if [ $EmployeeCheck -eq 0 ]
then 
echo Employee Is Present
else
echo Employee Is Absent
fi

