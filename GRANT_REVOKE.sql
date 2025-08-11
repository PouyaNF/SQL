-- Grant SELECT and INSERT permissions on employees table to user john
GRANT SELECT, INSERT ON employees TO john;

-- Revoke INSERT permission from user john
REVOKE INSERT ON employees FROM john;

-- Grant all privileges on database to admin_role
GRANT ALL PRIVILEGES ON DATABASE company_db TO admin_role;
