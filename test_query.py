"""test query script"""

import os
import psycopg2
import pandas as pd

def get_con():
    con = psycopg2.connect(
        host='database', #container w postgres image in docker compose
        port=5432,
        database=os.environ["POSTGRES_DB"],
        user=os.environ["POSTGRES_USER"],
        password=os.environ["POSTGRES_PASSWORD"]
    )
    cursor = con.cursor()

    return con, cursor

def main():
    con, cursor = get_con()
    df = pd.read_sql("""select * from public.my_table""", con)
    print(df.iloc[:10,:])

if __name__ == '__main__':
    main()