
import pandas as pd
import sqlite3

# Connect to SQLite database
conn = sqlite3.connect("restaurants.db")

# Load all records from restaurants table
df = pd.read_sql("SELECT * FROM restaurants", conn)

# Display first 5 rows
print(df.head())

# Close database connection
conn.close()
