import random
import json
from datetime import datetime, timedelta

# Define a function to generate a random date range
def generate_random_date_range():
    # Generate a random number of days (between 1 and 365) to subtract from the current date
    days_difference = random.randint(1, 365)
    # Calculate the end date by subtracting days from the current date
    end_date = datetime.now() - timedelta(days=days_difference)
    # Calculate the start date by subtracting a random number of additional days
    start_date = end_date - timedelta(days=random.randint(1, days_difference))
    # Format the date range as a string
    date_range = f"[{start_date.date()}, {end_date.date()}]"
    return date_range

lines=[]

property_address=''
property_long_description=''
property_short_description=''
host_id=''

# List of words for property names
property_name_words = ['Cozy', 'Sunny', 'Luxury', 'Charming', 'Modern', 'Vintage', 'Tranquil', 'Seaside', 'Mountain', 'Rustic', 'Elegant', 'Cottage', 'Spacious', 'Serene', 'Unique', 'Scenic', 'Peaceful']
property_addresses = [
    '123 Main St', '456 Elm Ave', '789 Oak Rd', '101 Pine Ln', '222 Cedar Dr', '333 Maple Ct', '444 Birch Blvd',
    '555 Redwood Rd', '666 Willow Ln', '777 Spruce Ave', '888 Juniper Dr', '999 Magnolia Ct', '111 Palm St', '222 Birchwood Rd',
    '333 Rosewood Ave', '444 Sunflower Ln', '555 Meadow Rd', '666 River Dr', '777 Beachside Ct', '888 Mountain View Blvd',
    '999 Lakefront St', '101 Park Ave', '202 Forest Rd', '303 Hillside Ln', '404 Ocean Dr', '505 Desert Ct', '606 Valley Rd',
    '707 Skyline Ave', '808 Sunset Blvd', '909 Sunrise Ln', '123 Forest Glen Ct', '456 Hidden Valley Dr', '789 Lakeview Rd',
    '1011 Riverfront Ave', '1213 Sea Breeze Ct', '1415 Ocean View Ln', '1617 Mountain Vista Rd', '1819 Hilltop Dr', '2021 Valley Ridge Ct',
    '2223 Sunset Beach Ave', '2425 Coastal Paradise Rd', '2627 Serene Pines Dr', '2829 Woodland Retreat Ln', '3031 Skyline Panorama Blvd',
    '3233 Lakeside Serenity Dr', '3435 Forest Haven Ct', '3637 Riverfront Bliss Ave', '3839 Mountain Vista View Rd', '4041 Tranquil Valley Ln',
    '4243 Serene Meadows Ave', '4445 Coastal Breezes Ct', '4647 Oceanfront Delight Rd', '4849 Hillside Escape Blvd'
]
property_long_descriptions = [
    'A spacious and cozy home with beautiful garden views.',
    'This charming property offers a tranquil retreat in the heart of the city.',
    'A modern and stylish apartment perfect for a relaxing getaway.',
    'Luxury living with breathtaking mountain and lake views.',
    'Experience the beauty of nature in this peaceful forest retreat.',
    'A beachfront paradise with stunning ocean vistas.',
    'An elegant villa with panoramic views of the valley.',
    'A serene lakeside cottage for the ultimate relaxation.',
    'Escape to the mountains in this beautifully designed cabin.',
    'A hidden gem nestled in the woods, offering privacy and tranquility.'
]
property_short_descriptions = [
    'Spacious garden home',
    'Charming city retreat',
    'Stylish modern apartment',
    'Luxury mountain views',
    'Peaceful forest escape',
    'Beachfront paradise',
    'Elegant valley villa',
    'Lakeside cottage',
    'Mountain cabin getaway',
    'Hidden forest gem'
]

# Define the range of host IDs (1 to 200)
host_ids = list(range(1, 201))

# Define the number of properties per host
min_properties = 1
max_properties = 3

# Generate a random property name
property_name = ' '.join(random.sample(property_name_words, random.randint(1, 3)))
property_address = random.choice(property_addresses)
property_long_description = random.choice(property_long_descriptions)
property_short_description = random.choice(property_short_descriptions)

# Iterate through each host ID
for host_id in host_ids:
    # Generate a random number of properties for this host
    num_properties = random.randint(min_properties, max_properties)

    # Generate and insert the specified number of properties
    for _ in range(num_properties):
         # Generate a random date range for dates_available
        dates_available = generate_random_date_range()

         # Generate a random boolean value for 'visible' &  smoke_allowed
        visible = random.choice([True, False])
        smoke_allowed = random.choice([True, False])

        # Your property insertion code here with the generated host_id
        property_name = ' '.join(random.sample(property_name_words, random.randint(1, 3)))
        property_address = random.choice(property_addresses)
        property_long_description = random.choice(property_long_descriptions)
        property_short_description = random.choice(property_short_descriptions)

        # Output the SQL statement (you can print it or use it as needed)
        sql_statement = f"""
        INSERT INTO public."Property" (
            country_id, 
            amenity_id, 
            review_id, 
            property_type_id, 
            property_images, 
            guest_capacity, 
            name, 
            adress, 
            description_long, 
            description_short, 
            units_available, 
            units_total, 
            dates_available, 
            visibile, 
            longitude, 
            latitude, 
            beds, 
            baths, 
            smoke_allowed, 
            rooms, 
            updated_on, 
            host_id
        ) VALUES (
            floor(random() * 49) + 1,  
            NULL,  
            NULL,  
            floor(random() * 20) + 1,  
            NULL,  
            floor(random() * 10) + 1,  
            '{property_name}',  
            '{property_address}',  
            '{property_long_description}',  
            '{property_short_description}',  
            floor(random() * 31),  
            floor(random() * 31),  
            '{dates_available}',  
            {visible},  
            (random() * 180) - 90,  
            (random() * 90) - 45,  
            floor(random() * 6) + 1,  
            floor(random() * 6) + 1,  
            {smoke_allowed},  
            floor(random() * 5) + 1,  
            current_date - (random() * 365)::integer,  
            {host_id}
        );
        """
        # Print or execute the SQL statement here
        print(sql_statement)
        lines.append(sql_statement)

with open('insert-property.sql','a') as file:
    for line in lines:
        file.write(line)