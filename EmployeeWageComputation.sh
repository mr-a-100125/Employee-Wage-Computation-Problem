#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch."

#Check Employee is Present or Absent.
isPresent=$((RANDOM%2))
if [ $ispresent -eq 1 ]
then
	echo "Employee is Present."
else
	echo "Employee is Absent."
fi
