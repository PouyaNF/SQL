# Example: Connecting to different company databases using Python

import pandas as pd
import sqlalchemy

# 1) PostgreSQL connection
pg_engine = sqlalchemy.create_engine(
    "postgresql+psycopg2://username:password@localhost:5432/companydb"
)
pg_df = pd.read_sql("SELECT * FROM employees LIMIT 5", pg_engine)

# 2) MySQL connection
mysql_engine = sqlalchemy.create_engine(
    "mysql+pymysql://username:password@localhost:3306/companydb"
)
mysql_df = pd.read_sql("SELECT * FROM employees LIMIT 5", mysql_engine)

# 3) SQL Server connection
mssql_engine = sqlalchemy.create_engine(
    "mssql+pyodbc://username:password@server_name/database_name?driver=ODBC+Driver+17+for+SQL+Server"
)
mssql_df = pd.read_sql("SELECT * FROM employees LIMIT 5", mssql_engine)

# 4) Oracle connection
oracle_engine = sqlalchemy.create_engine(
    "oracle+cx_oracle://username:password@hostname:1521/?service_name=ORCL"
)
oracle_df = pd.read_sql("SELECT * FROM employees WHERE ROWNUM <= 5", oracle_engine)

# Print results
print(pg_df)
print(mysql_df)
print(mssql_df)
print(oracle_df)

# Example output (PostgreSQL/MySQL/SQL Server/Oracle):
#   id  first_name  last_name  salary  department
# 0  1    Alice     Johnson   70000   IT
# 1  2    Bob       Smith     80000   Finance
