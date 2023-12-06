# IU INTERNATIONAL UNIVERSITY OF APPLIED SCIENCES

### Build a Data Mart in SQL (DLBDSPBDM01)
A SQL database designed to be utilized for a functional Airbnb in PostgreSQL.
PostgreSQL was chosen from numerous popular SQL Databases because it has Full ACID compliance, the diverse data types, less strict license requirements, more advanced queries due to high-level SQL Compliance (Table inheritance, window functions, etc.), flexibility (options to add new data types, customized functions) and the ability to use Multi-Version Concurrency Control (MVCC) which is great for high transaction volumes.

## Purpose
The datamart project is meant to understand how a datamart is modelled, developed and used with examples.

# Development Planning - UML Schemas
## UML Diagram
photo diagram

# Requirements Specification
User:
    Contact Information
    Reservations
    Payment
    Voucher
    Media
    Friends
    Liked Properties
    Reviews
...

# Grading
*Capturing the problem
*Clear problem definition/objective
*Understandable concept
*Appropriate transfer of theories/models
*Clear information about the chosen Methodology/Idea/Procedure
*Quality of implementation and documentation
*Creativity of the solution approach
*Solution implemented fulfils intended objective
*Compliance with formal requirements

# How to get started
## Dependencies
Python 3.7+
## Installation instructions
git clone ...
cd ...
pip3 install -r requirements.txt

# Install Postgresql (Ubuntu 22.04 LTS)
According to the documentation on Ubuntu: https://ubuntu.com/server/docs/databases-postgresql
**Install using package manager**
`sudo apt install postgresql`
**Create a Postgres database**
`sudo -u postgres psql`
`CREATE DATABASE airbnb;`
**Connect to the database**
`\c airbnb`
**Create a new table**
`CREATE TABLE [IF NOT EXISTS] customer (
   customer_id SERIAL PRIMARY KEY,
   user_name VARCHAR(50) UNIQUE NOT NULL,
   email     VARCHAR(50) UNIQUE NOT NULL,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   created_on TIMESTAMP NOT NULL,
   last_login TIMESTAMP
);`

# Run the application
python3 ...

# Query the database
command
command

# Example Queries
photo
photo

# Database Views
Get customer
Get property_owner

# Database Functions
Sum profit?
Sum reviews?

# Disclaimer
The developed application is licensed under the GNU General Public License.