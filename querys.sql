
-- Get the user by the role of a company
SELECT
    company.id,
    company.name,
    company.rut,
    users.id,
    users.name,
    roles.name
FROM companies company
         JOIN users
              ON company.id = users.company_id
         JOIN roles on roles.id = users.roles_id
where company.id = 1 AND lOWER(roles.name) LIKE '%admin%';


SELECT * FROM companies company
