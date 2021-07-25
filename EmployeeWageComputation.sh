#!/bin/bash 
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
#Calcualating Employee Wage.
isPresent=$((RANDOM%3))
wagePerHr=20
fullDayHrs=8
partTime=4
absent=0
salaryPerDay=0
workingDayMonth=20
salaryPerMonth=0

function salary()
{
        salaryPerDay=$(($wagePerHr*$1))
        echo "Day salary : $salaryPerDay"
        totalWorkingHrs=$(($1*$workingDayMonth))
        if [ $totalWorkingHrs -eq 100 ]
        then
                salaryPerMonth=$((100*$salaryPerDay))
        else
        salaryPerMonth=$(($workingDayMonth*$salaryPerDay))
        fi
        echo "Month salary : $salaryPerMonth"
}

case $isPresent in
	1) echo "Employee is Full time Present."
	   salary $fullDayHrs
		;;
	2) echo "Employee is Part time Present."
           salary $partTime
		;;
	*) echo "Employee is Absent."
	   salary $absent
esac
