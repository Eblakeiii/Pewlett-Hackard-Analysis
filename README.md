# Pewlett-Hackard-Analysis

# Overview and Purpose of Analysis
The goal of this analysis was to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.  The analysis was based on csv files containing employee data, titles information as well as departmental information for each employee.  Each of the csv files were imported into pgAdmin and queried using postgres sql.

# Results
The employees csv file contained 300,024 unique record rows, containing all current and former employees.  The current employee count was 240,124 at the time of this review.  The information showed the earliest hire date was January 1985 and the latest hire date was January 2000.  The oldest employee was born in February 1952 and the youngest employee was born in February 1965. For the employee distribution by department, click [here](  ).

To identify the employees who will be retiring, the employee and dept_emp tables were used, inner join on emp_no.  Criteria was any current employee born between 1/1/1952 and 12/31/1955.  The total number of retiring employees was 72,458.  The distribution by title is shown [here](  ).

#### 1.  Over 30% of the current employee population is set to retire.
#### 2.  Roughly 25% of the retiring group will leave each year over a four year span.  See [chart]( ) for details.
#### 3.  There are only 1,549 employees (2.14% of retiring employees) considered eligible for the mentorship program.  See [chart](  ) for title details.
#### 4.  There are no manager titled employees eligible for the mentorship program.


# Summary
## Provide high-level responses to the following questions, 
### then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

#### 1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
#### 2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
