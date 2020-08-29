#! /bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

attendance=$(( RANDOM%2 ))

if [ $attendance -eq 0 ]
then
	echo "Absent"
else
	echo "Present"
fi
