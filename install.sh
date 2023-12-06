#!/bin/bash

# Set the desired password for the user
user="iu_test"
password="iu_test_pass"
dbname="airbnb_test"

# Set the path to your SQL script folders
create_table_scripts_folder="create_table_scripts"
insert_rows_scripts_folder="insert_rows_scripts"

echo "Current working directory: $(pwd)"
echo ""
echo "Attempting to drop any previous old test database or user!"
echo ""

sudo -u postgres dropdb $dbname
sudo -u postgres dropuser $user

echo ""
echo "Creating new user and database!"
echo ""
# Run createuser command with specified options
sudo -u postgres psql -c "CREATE USER $user WITH PASSWORD '$password' CREATEDB;"
sudo -u postgres psql -d postgres -c "CREATE DATABASE $dbname;"

echo ""
echo "Please note that the following can take between 3-10 minutes depending on your PC's disk and cpu speed."
echo ""
# Function to execute SQL scripts in a folder
execute_scripts() {
    export PGPASSWORD=$password
    folder=$1

    # Get the number of scripts in the folder
    script_count=$(ls -v "$folder"/*.sql | wc -l)
    counter=1
    for script in $(ls -v $folder/*.sql); do
        echo "Executing $script... $counter/$script_count"
	counter=$((counter + 1))
        psql -h localhost -U $user -d $dbname -f $script > /dev/null 2>&1
    done
}


# Execute scripts in create_table_scripts folder
echo "Creating tables..."
execute_scripts "$create_table_scripts_folder"

echo ""

# Execute scripts in insert_rows_scripts folder
echo "Inserting data..."
execute_scripts "$insert_rows_scripts_folder"

echo ""
echo "Install script has completed running! The database should now be ready to interact with."
