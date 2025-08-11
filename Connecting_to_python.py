# Example: Connecting Python to a SQLite database and running a query
import sqlite3
import pandas as pd

# 1. Connect to the database file
conn = sqlite3.connect("company.db")

# 2. Write SQL query
query = """
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
"""

# 3. Read query result into a pandas DataFrame
df = pd.read_sql(query, conn)

# 4. Close the connection
conn.close()

# 5. Show the results
print(df)

# Example output:
#   department  total_salary
# 0   Finance         220000
# 1   HR              150000
# 2   IT              320000
