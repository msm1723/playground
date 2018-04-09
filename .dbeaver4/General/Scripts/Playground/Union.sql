SELECT fname name, lname last_name, 'customer' who
FROM individual
UNION
SELECT fname, lname, 'employee' who
FROM employee
ORDER BY last_name;