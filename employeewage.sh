#! /bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"
wageperhour=20
totalhoursinmonth=0
totaldaysinmonth=0
totalwage=0
index=0
declare -A details
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
while [ $totalhoursinmonth -le 99 ] && [ $totaldaysinmonth -le 19 ]
do
	((totaldaysinmonth++))
	totalhoursperdays=$( getworkinghours $(( RANDOM%3 )) )
	totalhoursinmonth=$(( totalhoursinmonth+totalhoursperdays ))
	dailywage=$(( wageperhour*totalhoursperdays ))
	wages[((index++))]=$dailywage
	totalwage=$(( totalwage+dailywage ))
	details[Day $totaldaysinmonth]=$dailywage
done
echo "Total Wage:$totalwage"
echo ${wages[@]}
echo "Keys: ${!details[@]}"
echo "Values: ${details[@]}"
