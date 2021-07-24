#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
#Calcualating Employee Wage.
isPresent=$((RANDOM%2))
wagePerHr=20
fullDayHrs=8

if [ $isPresent -eq 1 ]
then
	echo "Employee is Present."
	salaryPerDay=$(($wagePerHr*$fullDayHrs))
	echo "$salaryPerDay"
else
	echo "Employee is Absent."
fi



