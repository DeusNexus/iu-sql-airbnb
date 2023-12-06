import random
import json

# List of Access Level IDs
access_level_ids = list(range(1, 11))

lines = []
users = []

# Generate INSERT statements for Admin table
for user_id in range(1551, 1601):
    access_level_id = random.choice(access_level_ids)
    line1= f"INSERT INTO public.\"Admin\"(admin_id, access_level_id) VALUES (DEFAULT, {access_level_id});"
    print(line1)
    lines.append(line1)
    users.append({
        "admin_id":"DEFAULT",
        "access_level_id": f"{access_level_id}"
    })

with open('insert-admin.sql','a') as sql:
    for line in lines:
        sql.write(line+'\n')

with open('insert-admin.json','w') as file:
    file.write(json.dumps(users))
