import os
from flask import Flask
import mysql.connector

app = Flask(__name__)

# Configure the MySQL connection using environment variables
db = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_DATABASE")
)

# Create a cursor to interact with the database
cursor = db.cursor()

# Define a route that interacts with the database
@app.route('/')
def hello():
    # Execute a simple query
    cursor.execute("SELECT 'Hello, World!'")

    # Fetch the result
    result = cursor.fetchone()

    return result[0]

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
