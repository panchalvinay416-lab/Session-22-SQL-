
import pandas as pd
from sqlalchemy import create_engine, URL

# Step 1: Connect to MySQL
connection_url = URL.create(
    drivername="mysql+pymysql",
    username="root",
    password="root",
    host="localhost",
    port=3306,
    database="Zomato_vivek"
)

engine = create_engine(connection_url)

try:
    # Step 2: Load the latest 100 orders
    query = """
    SELECT *
    FROM orders
    ORDER BY order_date DESC, order_id DESC
    LIMIT 100;
    """

    df = pd.read_sql(query, engine)

    print("Total Orders Loaded:", len(df))
    print("\nAll Orders:")
    print(df.to_string(index=False))

    # Step 3: Find the top 3 most ordered food items
    top_3_foods = (
        df["food_item"]
        .value_counts()
        .head(3)
        .reset_index()
    )

    top_3_foods.columns = [
        "Food Item",
        "Number of Orders"
    ]

    print("\nTop 3 Most Ordered Food Items:")
    print(top_3_foods.to_string(index=False))

except Exception as e:
    print("Error:", e)

finally:
    engine.dispose()
