#! /bin/bash

echo "Welcome to Employee Wage Computation Program on Master Branch"
wageperhour=20
totalhoursinmonth=0
totaldaysinmonth=0
function getworkinghours(){
	case $1 in
			0)
				echo "Absent"
				;;
			1)
				totalhoursperday=8
				;;
			2)
				totalhoursperday=4
				;;
	esac
	echo "$totalhoursperday"
}
while [ $totalhoursinmonth -le 100 ] && [ $totaldaysinmonth -le 20 ]
do
	((totaldaysinmonth++))
	totalhoursperdays=$( getworkinghours $(( RANDOM%3 )) )
	totalhoursinmonth=$(( totalhoursinmonth+totalhoursperdays ))
	dailywage=$(( wageperhour*totalhoursperdays ))
	echo "Daily Wage:$dailywage"
done
