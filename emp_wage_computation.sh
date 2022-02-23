echo "Welcome to Employee Wage Computation Program"

#Check Employee is Present or Absent

emp_rate_per_hr=20
max_work_hrs=100
work_day=20
total_work_hrs=0
total_work_day=0
while(( $total_work_hrs != $max_work_hrs && $total_work_day != $work_day ))
do

emp_attendance=$(( RANDOM%2 ))
if (( $emp_attendance == 1 ))
then
     echo "Present"
     (( total_work_day++ ))
else
     echo "Absent"
     
fi

#Add Part time Employee & Wage
emp_time=$(( RANDOM%3 ))
#using switch case

if(( $emp_attendance == 1))
then
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

total_work_hrs=$(($total_work_hrs + $work_hrs))
echo "Total work hrs is " $total_work_hrs
fi
done
echo "Total work day is" $total_work_day

total_wage=$(($total_work_hrs * $emp_rate_per_hr))
echo "Total wage is " $total_wage



#Calculate Daily Employee Wage

#emp_rate_per_hr=20
#daily_emp_wage=$(($emp_attendance * $work_hrs * $emp_rate_per_hr))
#echo "Daily Employee Wage" $daily_emp_wage

#Calculating Wages for a Month

#work_day=20
#monthly_emp_wage=$(($daily_emp_wage * $work_day))
#echo "Monthly Employee Wage" $monthly_emp_wage

