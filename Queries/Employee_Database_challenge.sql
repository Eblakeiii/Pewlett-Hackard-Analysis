--Mod challenge #1: filter retiring employees with titles part 1
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
-- INTO retirement_titles
FROM employees as e
JOIN titles as t USING(emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (e.emp_no);

-- Module Challenge #1: Use Dictinct with Orderby to remove duplicate rows part 2
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title, rt.from_date, rt.to_date
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

-- Mod challenge #1: count of titles part 3
SELECT COUNT(emp_no), title
-- INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- Mod challenge #2: get eligible employees for mentorship program
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, birth_date, de.from_date, de.to_date, t.title
-- INTO mship_elig
FROM employees AS e
JOIN dept_emp AS de USING(emp_no)
JOIN titles AS t USING(emp_no)
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'AND de.to_date = '9999/01/01'
ORDER BY emp_no;

--identify retiring group titles by birth year
SELECT DATE_PART('year', birth_date), COUNT(DATE_PART('year', birth_date)), t.title
FROM employees as e
JOIN dept_emp as de USING(emp_no)
JOIN titles as t USING(emp_no)
GROUP BY DATE_PART('year', e.birth_date), e.birth_date, de.to_date, t.title, t.to_date
HAVING e.birth_date BETWEEN '1952-01-01' AND '1955-12-31' 
	AND de.to_date = '9999-01-01'
	AND t.to_date = '9999-01-01'
ORDER BY (DATE_PART('year', birth_date));

--employees eligible for mentorship program, extended parameter
SELECT COUNT(e.emp_no), DATE_PART('YEAR', e.birth_date)
FROM employees as e
JOIN dept_emp as de USING(emp_no)
WHERE de.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1964-01-01' AND '1965-12-31'
GROUP BY DATE_PART('YEAR', e.birth_date);




