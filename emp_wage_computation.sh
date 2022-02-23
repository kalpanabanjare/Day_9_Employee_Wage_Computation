echo "Welcome to Employee Wage Computation Program"

#Check Employee is Present or Absent

emp_attendance=$(( RANDOM%2 ))

if (( $emp_attendance == 1 ))
then
     echo "Present"
else
     echo "Absent"
fi

#Add Part time Employee & Wage

emp_time=$(( RANDOM%3 ))

#using switch case

case $emp_time in

     1) echo "FullTime"
        work_hrs=8
     ;;

     2) echo "PartTime"
        work_hrs=8
     ;;

     *) echo "FullTime + PartTime"
        work_hrs=16
     ;;

esac
#Calculate Daily Employee Wage

emp_rate_per_hr=20
daily_emp_wage=$(($emp_attendance * $work_hrs * $emp_rate_per_hr))
echo "Daily Employee Wage" $daily_emp_wage
