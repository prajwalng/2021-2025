import sqlite3

# Function to connect to the database
def connect_to_database():
    connection = sqlite3.connect("contact_book.db")
    cursor = connection.cursor()
    return connection, cursor

# Function to create the table if it does not exist
def create_table(cursor):
    cursor.execute('''CREATE TABLE IF NOT EXISTS Contacts
                      (ID INTEGER PRIMARY KEY AUTOINCREMENT,
                       Name TEXT NOT NULL,
                       CellNumber TEXT NOT NULL,
                       Email TEXT)''')

# Function to insert data into the table
def insert_data(cursor, name, cell_number, email):
    cursor.execute("INSERT INTO Contacts (Name, CellNumber, Email) VALUES (?, ?, ?)", (name, cell_number, email))

# Function to fetch and display all data from the table
def fetch_and_display_data(cursor):
    cursor.execute("SELECT * FROM Contacts")
    data = cursor.fetchall()

    print("Contact Book:")
    print("-" * 40)
    for row in data:
        print(f"ID: {row[0]}")
        print(f"Name: {row[1]}")
        print(f"Cell Number: {row[2]}")
        print(f"Email: {row[3]}")
        print("-" * 40)

# Main function
def main():
    # Connect to the database
    connection, cursor = connect_to_database()

    # Create the table
    create_table(cursor)

    # Insert 5 rows of data
    insert_data(cursor, "John Doe", "123-456-7890", "john.doe@email.com")
    insert_data(cursor, "Jane Smith", "987-654-3210", "jane.smith@email.com")
    insert_data(cursor, "Alice Johnson", "555-123-4567", "alice.johnson@email.com")
    insert_data(cursor, "Bob Williams", "888-777-9999", "bob.williams@email.com")
    insert_data(cursor, "Eve Davis", "111-222-3333", "eve.davis@email.com")

    # Fetch and display all data
    fetch_and_display_data(cursor)

    # Commit and close the connection
    connection.commit()
    connection.close()

if __name__ == "__main__":
    main()