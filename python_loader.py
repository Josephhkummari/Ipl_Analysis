import os
import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv

print("Starting script...")

# Load environment variables
load_dotenv()

# Database credentials
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_HOST = os.getenv("DB_HOST")
DB_PORT = os.getenv("DB_PORT")
DB_NAME = os.getenv("DB_NAME")

# Create engine
engine = create_engine(
    f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

print("Engine created!")

# Load CSVs
matches = pd.read_csv(
    "data/matchesss_cleaned.csv",
    low_memory=False
)

deliveries = pd.read_csv(
    "data/deliveriesss_cleaned.csv",
    low_memory=False
)

print("CSV files loaded!")
print("Matches Shape:", matches.shape)
print("Deliveries Shape:", deliveries.shape)

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