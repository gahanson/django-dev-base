import os
import time
from dotenv import load_dotenv
import psycopg2

def postgres_test():
    time.sleep(5)
    load_dotenv()
    connectVars = "dbname='"+os.environ['DJANGO_DB']+"' user='"+os.environ['DJANGO_DB_USER']+"' host='"+os.environ['DJANGO_DB_HOST']+"' password='"+os.environ['DJANGO_DB_PASSWORD']+"' connect_timeout=1 "
    try:
        conn = psycopg2.connect(connectVars)
        conn.close()
        return True
    except:
        return False

# print("testing postgres connection...")
print(postgres_test())