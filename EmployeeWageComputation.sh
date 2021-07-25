#!/bin/bash 
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
#Calcualating Employee Wage.
isPresent=$((RANDOM%3))
wagePerHr=20
fullDayHrs=8
partTime=4
salaryPerDay=0
workingDayMonth=20
salaryPerMonth=0

case $isPresent in
	1) echo "Employee is Full time Present."
	   salaryPerDay=$(($wagePerHr*$fullDayHrs))
	   echo "Day salary : $salaryPerDay"
	   totalWorkingHrs=$(($fullDayHrs*$workingDayMonth))
	   if [ $totalWorkingHrs -eq 100 ]
	   then
		salaryPerMonth=$((100*$salaryPerDay))
	   else
	   	salaryPerMonth=$(($workingDayMonth*$salaryPerDay))
	   fi
	   echo "Month salary : $salaryPerMonth"
		;;
	2) echo "Employee is Part time Present."
           salaryPerDay=$(($wagePerHr*$partTime))
	   echo "Day salary : $salaryPerDay"
	   salaryPerMonth=$(($workingDayMonth*$salaryPerDay))
	   echo "Month salary : $salaryPerMonth"
		;;
	*) echo "Employee is Absent."
	   echo "Day salary : $salaryPerDay"
	   echo "Month salary : $salaryPerMonth"
esac

