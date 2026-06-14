-- Validation in SQL Environment --

# 1. Check if all tables exist

SELECT Table_name
From information_schema.tables
Where table_schema = 'upi_capstone';

# 2. Validate Structure of all tables

Select table_name, column_name, data_type, is_nullable
From information_schema.columns
where table_schema = 'upi_capstone'
Order by table_name;

# 3. Validate all constraints

Select table_name,constraint_name
From information_schema.table_constraints
where constraint_type = 'PRIMARY KEY' and table_schema = 'upi_capstone'
order by table_name;

  -- Foreign Key -- 
SELECT 
    table_name,
    column_name,
    referenced_table_name,
    referenced_column_name
FROM information_schema.key_column_usage
WHERE referenced_table_name IS NOT NULL
AND table_schema = 'upi_capstone';


Select * From customer_master;
