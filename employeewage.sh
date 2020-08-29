#! /bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

attendance=$(( RANDOM%2 ))
wageperhour=20
totalhoursperday=8

if [ $attendance -eq 0 ]
then
	echo "Absent"
else
	echo "Present"
	dailywage=$(( wageperhour*totalhoursperday ))
	echo "Daily wage is:$dailywage"
fi

