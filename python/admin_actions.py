import random
import json
from faker import Faker

fake = Faker()

# List of admin IDs
admin_ids = list(range(1551, 1601))
lines = []
users = []

# List of possible operations
operations = ["Create Access Level", "Update Access Level", "Delete Access Level", "Add Amenity", "Book Property", "Send Message"]

# Generate random activity log entries
for _ in range(500):
    user_id = random.choice(admin_ids)
    operation = random.choice(operations)
    query = f"Sample query for {operation}"
    exec_on = fake.date_time_this_decade(before_now=True, after_now=False)
    
    line1 = f"INSERT INTO public.\"Activity Log\"(user_id, operation, query, exec_on) VALUES ({user_id}, '{operation}', '{query}', '{exec_on}');"
    print(line1)
    lines.append(line1)
    users.append({
        "user_id": user_id,
        "operation": operation,
        "query": query,
        "exec_on": f'{exec_on}'
    })


with open('insert-actions.sql','a') as sql:
    for line in lines:
        sql.write(line+'\n')

with open('insert-actions.json','w') as file:
    file.write(json.dumps(users))