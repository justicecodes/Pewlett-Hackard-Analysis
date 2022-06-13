-- Deliverable 1: 
-- A) Retiring Employee count by title  
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM titles AS ti
LEFT JOIN employees as e
ON e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- B) Only showing most recent title per employee
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

-- C) Count by retiring titles
SELECT COUNT(ut.title), ut.title
--INTO retiring_titles_count
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- Deliverable 2 Mentorship from employees born in 1965
SELECT DISTINCT ON(e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
--INTO mentorship_eligibility
FROM employees as e
LEFT JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-02-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- SUMMARY Count of employee job titles eligible for mentorship
SELECT COUNT(me.title),
    me.title
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;

-- SUMMARY Determining average salary by grouping hire dates, 1980s, 1990s and 2000s
SELECT AVG(s.salary)
FROM salaries AS s
INNER JOIN employees as e
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
AND (hire_date BETWEEN '2000-01-01' AND '2002-12-31')
AND (de.to_date = '9999-01-01');

-- SUMMARY Employees listed in multiple departments
SELECT COUNT(ti.emp_no), 
    ti.emp_no
FROM titles as ti
GROUP BY ti.emp_no
HAVING COUNT(ti.emp_no)>2;