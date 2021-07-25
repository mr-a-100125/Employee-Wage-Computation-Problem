#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
#Calcualating Employee Wage.

wagePerHr=20
fullDayHrs=8
partTime=4
absent=0
salaryPerDay=0
workingDayMonth=20
salaryPerMonth=0

for ((i=1; i<=$workingDayMonth;i++))
do
        isPresent=$((RANDOM%3))
        case $isPresent in
                1) echo "Employee is Full time Present."
                salaryPerDay=$(($wagePerHr*$fullDayHrs))
                echo "Day salary : $salaryPerDay"
                salaryPerMonth=$(($salaryPerMonth+$workingDayMonth*$salaryPerDay))
                echo "Month salary : $salaryPerMonth"
                        ;;
                2) echo "Employee is Part time Present."
                   salaryPerDay=$(($wagePerHr*$partTime))
                echo "Day salary : $salaryPerDay"
                salaryPerMonth=$(($salaryPerMonth+$workingDayMonth*$salaryPerDay))
                echo "Month salary : $salaryPerMonth"
                        ;;
                *) echo "Employee is Absent."
                echo "Day salary : $salaryPerDay"
                echo "Month salary : $salaryPerMonth"
        esac
done
