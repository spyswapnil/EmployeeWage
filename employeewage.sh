#! /bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"
wageperhour=20
fullday=1
parttime=2
attendance=$(( RANDOM%3 ))
case $attendance in
	0)
		echo "Absent"
		;;
	1)
		echo "Full Day"
		totalhoursperday=8
		;;
	2)
		echo "Half Day"
		totalhoursperday=4
		;;
esac

dailywage=$(( wageperhour*totalhoursperday ))
echo "Daily Wage:$dailywage"
