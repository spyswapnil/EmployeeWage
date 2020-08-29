#! /bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"
wageperhour=20
fullday=1
parttime=2
totalhoursinmonth=0
totaldaysinmonth=0
while [ $totalhoursinmonth -le 100 ] && [ $totaldaysinmonth -le 20 ]
do
	attendance=$(( RANDOM%3 ))
	case $attendance in
		0)
			echo "Absent"
			;;
		1)
			echo "Full Day"
			totalhoursperday=8
			((totaldaysinmonth++))
			totalhoursinmonth=$((totalhoursinmonth+totalhoursperday))
			;;
		2)
			echo "Half Day"
			totalhoursperday=4
			((totaldaysinmonth++))
			totalhoursinmonth=$((totalhoursinmonth+totalhoursperday))
			;;
	esac

dailywage=$(( wageperhour*totalhoursperday ))
echo "Daily Wage:$dailywage"
done
