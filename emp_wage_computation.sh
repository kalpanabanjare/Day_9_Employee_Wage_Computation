echo "Welcome to Employee Wage Computation Program"

#Check Employee is Present or Absent

emp_attendance=$(( RANDOM%2 ))

if (( $emp_attendance == 1 ))
then
     echo "Present"
else
     echo "Absent"
fi

#Calculate Daily Employee Wage

emp_rate_per_hr=20
work_hrs=8
daily_emp_wage=$(($emp_attendance * $work_hrs * $emp_rate_per_hr))
echo "Daily Employee Wage" $daily_emp_wage
