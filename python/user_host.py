import random
import faker
import json
from faker import Faker

fake = Faker()

admin_users = []
users = []
lines = []

for _ in range(200):
    first_name = fake.first_name()
    last_name = fake.last_name()
    email = fake.email()
    password = fake.password(length=12)  # Generates a random 12-character password
    about_me = fake.paragraph()  # Generates random "about me" text

    admin_users.append((first_name, last_name, email, password, about_me))

# SQL INSERT statements for 20 random admin users
for i, user in enumerate(admin_users, start=1):
    line1=f"INSERT INTO public.\"User\" (admin_id, user_type_id, profile_img, first_name, last_name, phone, email, password, last_updated, social_link, about_me)"
    line2=f"VALUES (NULL, 2, NULL, '{user[0]}', '{user[1]}', '723-456-789{i}', '{user[2]}', '{user[3]}', current_date - random() * INTERVAL '365 days', 'https://www.linkedout.com/{user[0]}-{user[1]}-{i}-{i}', '{user[4]}');"
    print(line1)
    print(lines)
    lines.append(line1)
    lines.append(line2)
    users.append({
        "admin_id": "NULL",
        "user_type_id": 2,
        "profile_img": "NULL",
        "first_name": '{user[0]}',
        "last_name": '{user[1]}',
        "phone": '723-456-789{i}',
        "email": '{user[2]}',
        "password": '{user[3]}',
        "last_updated": "current_date - random() * INTERVAL '365 days'",
        "social_link": 'https://www.linkedout.com/{user[0]}-{user[1]}-{i}-{i}',
        "about_me": '{user[4]}',
    })


with open('insert-user-hosts.sql','a') as sql:
    for line in lines:
        sql.write(line+'\n')

with open('insert-user-hosts.json','w') as file:
    file.write(json.dumps(users))