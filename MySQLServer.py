import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (no database selected yet)
        connection = mysql.connector.connect(
            host="localhost",      # Change if not local
            user="root",           # Your MySQL username
            password="sqlKLAUS1994#"  # Your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully or already exists.")
            cursor.close()
            connection.close()

    except mysql.connector.Error:
        print(f"Error connecting to MySQL: {err}")

if __name__ == "__main__":
    create_database()
