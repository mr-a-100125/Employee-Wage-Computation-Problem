#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
#Calcualating Employee Wage.
isPresent=$((RANDOM%3))
wagePerHr=20
fullDayHrs=8
partTime=4
salaryPerDay=0

if [ $isPresent -eq 1 ]
then
	echo "Employee is Full time Present."
	salaryPerDay=$(($wagePerHr*$fullDayHrs))
elif [ $isPresent -eq 2 ]
then
	echo "Employee is Part time Present."
	salaryPerDay=$(($wagePerHr*$partTime))
else
	echo "Employee is Absent."
fi
echo "$salaryPerDay"



