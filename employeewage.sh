#! /bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"
wageperhour=20
fullday=1
parttime=2
attendance=$(( RANDOM%3 ))
if [ $attendance -eq 0 ]
then
	echo "Absent"
elif [ $attendance -eq 1 ]
then
	echo "Full Day"
	totalhoursperday=8
else
	echo "Half Day"
	totalhoursperday=4
fi

dailywage=$(( wageperhour*totalhoursperday ))
echo "Daily Wage:$dailywage"
