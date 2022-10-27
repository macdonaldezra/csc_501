import typing as T
from pathlib import Path

import mysql.connector
from mysql.connector import errorcode


def get_db_connection(host: str = "localhost", username: str = "root", password: str = "password", dbname: str = "movies", port: int = 3306) -> T.Any:
    """
    Get access to a provided database.
    """
    try:
        return mysql.connector.connect(host=host, user=username, password=password, database=dbname, port=port)
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)

def execute_sql(connection: T.Any, sql: T.Union[Path, str], fetch_all: bool = True) -> T.Any:
    """
    Read in a file from the provided filepath or string and execute the SQL contained in the file.
    """
    query = ""
    if isinstance(sql, Path):
        with open(sql, "r") as infile:
            query = infile.read()
        if not query:
            raise ValueError(f"File {sql.as_posix()} is empty.")
    else:
        query = sql

    db_cursor = connection.cursor()
    try:
        db_cursor.execute(query)
    except Exception as err:
        # close database connection before raising exception
        db_cursor.close()
        raise err

    if fetch_all:
        return db_cursor.fetchall()

    return db_cursor.fetchone()