import os
import pandas as pd

# Get file paths
current_folder = os.path.dirname(__file__)
input_file = os.path.join(current_folder, "..", "dataset", "Sample - Superstore.csv")
output_file = os.path.join(current_folder, "..", "dataset", "cleaned_superstore.csv")

# Load dataset
df = pd.read_csv(input_file, encoding="latin1")

# Convert date columns
df["Order Date"] = pd.to_datetime(df["Order Date"])
df["Ship Date"] = pd.to_datetime(df["Ship Date"])

# Remove extra spaces from column names
df.columns = df.columns.str.strip()

# Create new columns
df["Year"] = df["Order Date"].dt.year
df["Month"] = df["Order Date"].dt.month_name()
df["Order Month"] = df["Order Date"].dt.month
df["Profit Margin"] = (df["Profit"] / df["Sales"]) * 100

# Save cleaned dataset
df.to_csv(output_file, index=False)

print("====================================")
print("Data cleaned successfully!")
print("====================================")
print("New Dataset Shape:", df.shape)
print("\nNew Columns Added:")
print(["Year", "Month", "Order Month", "Profit Margin"])
print("\nCleaned file saved as:")
print(output_file)