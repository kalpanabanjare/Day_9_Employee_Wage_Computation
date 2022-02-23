echo "Welcome to Employee Wage Computation Program"

#Check Employee is Present or Absent

emp_attendance=$(( RANDOM%2 ))

if (( $emp_attendance == 1 ))
then
     echo "Present"
else
     echo "Absent"
fi
