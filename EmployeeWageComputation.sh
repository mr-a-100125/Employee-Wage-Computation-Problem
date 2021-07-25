#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
#Calcualating Employee Wage.
isPresent=$((RANDOM%3))
wagePerHr=20
fullDayHrs=8
partTime=4
salaryPerDay=0

case $isPresent in
	1) echo "Employee is Full time Present."
	   salaryPerDay=$(($wagePerHr*$fullDayHrs))
	   echo "$salaryPerDay"
		;;
	2) echo "Employee is Part time Present."
           salaryPerDay=$(($wagePerHr*$partTime))
	   echo "$salaryPerDay"
		;;
	*) echo "Employee is Absent."
	   echo "$salaryPerDay"
esac

