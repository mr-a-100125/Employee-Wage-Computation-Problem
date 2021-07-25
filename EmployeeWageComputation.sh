#!/bin/bash 
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
#Calcualating Employee Wage.

wagePerHr=20
fullDayHrs=8
partTime=4
salaryPerDay=0
workingDayMonth=20
salaryPerMonth=0
absent=0
present=1

totalHrs=1
totalDays=0

function work()
{
	salaryPerDay=$(($wagePerHr*$1))
	totalHrs=$(($totalHrs+$1))
	totalDays=$(($totalDays+$2))
	if [ $totalHrs -ge 100 ]||[ $totalDays -eq 20 ]
        then
		echo "Salary per Day : $salaryPerDay"
		salaryPerMonth=$(($salaryPerMonth+$salaryPerDay))
		echo "Month salary : $salaryPerMonth"
	fi
}

for ((i=1; i<=$workingDayMonth;i++))
do
        isPresent=$((RANDOM%3))
        case $isPresent in
                1) echo "Employee is Full time Present."
                work $fullDayHrs $present
		        ;;
                2) echo "Employee is Part time Present."
                work $partTime $present
			;;
                *) echo "Employee is Absent."
                present=0
		work $absent $present
        esac
done
