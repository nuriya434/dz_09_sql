--1
CREATE OR REPLACE FUNCTION get_employee_info_by_name(employee_name VARCHAR)
RETURNS SETOF employees
AS $$
    SELECT * FROM employees WHERE first_name = employee_name;
$$ LANGUAGE sql;

SELECT * FROM get_employee_info_by_name('Nancy');

--2
CREATE OR REPLACE FUNCTION update_employees_name(employee_id_to_update integer, new_name VARCHAR)
RETURNS VOID
AS $$
    UPDATE employees
    SET first_name = new_name
    WHERE employee_id = employee_id_to_update;
$$ LANGUAGE sql;

SELECT * FROM update_employees_name(1, 'Firuza');

SELECT * FROM employees where employee_id=1