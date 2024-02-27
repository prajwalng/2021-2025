import sqlite3

# Function to create the table if it does not exist
def create_table():
    connection = sqlite3.connect("contact_book.db")
    cursor = connection.cursor()

    # Create Contacts table
    cursor.execute('''CREATE TABLE IF NOT EXISTS Contacts
                      (ID INTEGER PRIMARY KEY AUTOINCREMENT,
                       Name TEXT NOT NULL,
                       CellNumber TEXT NOT NULL,
                       Email TEXT)''')

    connection.commit()
    connection.close()

# Function to insert data into the table
def insert_data(name, cell_number, email):
    connection = sqlite3.connect("contact_book.db")
    cursor = connection.cursor()

    # Insert data into the table
    cursor.execute("INSERT INTO Contacts (Name, CellNumber, Email) VALUES (?, ?, ?)", (name, cell_number, email))

    connection.commit()
    connection.close()

# Function to fetch and display all data from the table
def fetch_and_display_data():
    connection = sqlite3.connect("contact_book.db")
    cursor = connection.cursor()

    # Fetch all data from the table
    cursor.execute("SELECT * FROM Contacts")
    data = cursor.fetchall()

    # Display data
    print("ID\tName\t\tCell Number\t\tEmail")
    print("-" * 40)
    for row in data:
        print(f"{row[0]}\t{row[1]}\t\t{row[2]}\t\t{row[3]}")

    connection.close()

# Create the table
create_table()

# Insert 5 rows of data
insert_data("John Doe", "123-456-7890", "john.doe@email.com")
insert_data("Jane Smith", "987-654-3210", "jane.smith@email.com")
insert_data("Alice Johnson", "555-123-4567", "alice.johnson@email.com")
insert_data("Bob Williams", "888-777-9999", "bob.williams@email.com")
insert_data("Eve Davis", "111-222-3333", "eve.davis@email.com")

# Fetch and display all data
fetch_and_display_data()