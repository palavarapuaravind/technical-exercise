import logging
import pyodbc

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

def get_db_connection():
    server = os.getenv('SQL_SERVER')
    database = os.getenv('SQL_DATABASE')
    username = os.getenv('SQL_USER')
    password = os.getenv('SQL_PASSWORD')
    connection_string = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
    try:
        conn = pyodbc.connect(connection_string, timeout=10)
        logging.info("Successfully connected to the database")
        return conn
    except Exception as e:
        logging.error(f"Database connection failed: {e}")
        return None

def log_visitor_ip(ip_address):
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        try:
            cursor.execute("INSERT INTO VisitorLogs (IPAddress) VALUES (?)", ip_address)
            conn.commit()
            logging.info(f"Successfully logged IP address: {ip_address}")
        except Exception as e:
            logging.error(f"Failed to insert IP address into database: {e}")
        finally:
            conn.close()

# Example usage
log_visitor_ip('192.168.1.1')
