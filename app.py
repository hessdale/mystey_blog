import random 

for i in range(100):
    post_id=random.randint(1,5)
    year=random.randint(2000,2023)
    month=random.randint(1,12)
    day=random.randint(1,30)
    insert=(f"({post_id},'{year}-{month}-{day}'),")
    print(insert)

