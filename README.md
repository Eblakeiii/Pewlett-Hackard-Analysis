# Pewlett-Hackard-Analysis

# Overview and Purpose of Analysis
The goal of this analysis was to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.  The analysis was based on csv files containing employee data, titles information as well as departmental information for each employee.  Each of the csv files were imported into pgAdmin and queried using postgres sql.

# Results
The employees csv file contained 300,024 unique record rows, containing all current and former employees.  The current employee count was 240,124 at the time of this review.  The information showed the earliest hire date was January 1985 and the latest hire date was January 2000.  The oldest employee was born in February 1952 and the youngest employee was born in February 1965. For the employee distribution by department, click [here](  ).

To identify the employees who will be retiring, the employee and dept_emp tables were used, inner join on emp_no.  Criteria was any current employee born between 1/1/1952 and 12/31/1955.  The total number of retiring employees was 72,458.  The distribution by title is shown [here](  ).

#### 1.  Over 30% of the current employee population is set to retire.
#### 2.  Roughly 25% of the retiring group will leave each year over a four year span.  See [chart]( ) for details.
#### 3.  There are only 1,549 employees (2.14% of retiring employees) considered eligible for the mentorship program.  See [chart](  ) for title details.
#### 4.  There is no Manager positions held by the mentorship eligible group.

# Summary
## Provide high-level responses to the following questions, 
### then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

#### 1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
The largest impact the retiring employees will have are roles as Senior Engineer and Senior Staff.  The combined groups account for more than 70% of retiring group.  See the [chart]( ) for details by birth year and by title.  The number of positions to be filled will be almost 17,000.  This approximate amount will need to be filled every year for the next four years.  

#### 2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
For the most part, yes, there are more than enough retirement_ready employees to mentor the eligible class.  The only positions deficient is the Manager; there are no Managers in the eligible group.  One way to mitigate this is to broaden the parameters of the eligible class.  See [chart](  ) for details if an additional year was included.
