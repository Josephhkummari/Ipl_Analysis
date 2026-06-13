import pandas as pd
from sqlalchemy import create_engine

print("Starting script...")

# Create engine
engine = create_engine(
    "postgresql+psycopg2://postgres:pjar2005@localhost:5432/ipl_analysis"
)

print("Engine created!")

# Load CSVs
matches = pd.read_csv("data/matchesss_cleaned.csv")
deliveries = pd.read_csv("data/deliveriesss_cleaned.csv")

print("CSV files loaded!")

# Test connection
with engine.connect() as conn:
    print("Database connection successful!")


# Load matches
matches.to_sql(
    "matches",
    engine,
    schema="ipl",
    if_exists="replace",
    index=False
)

print("Matches table loaded!")

# Load deliveries
deliveries.to_sql(
    "deliveries",
    engine,
    schema="ipl",
    if_exists="replace",
    index=False
)

print("Deliveries table loaded!")

print("DONE!")