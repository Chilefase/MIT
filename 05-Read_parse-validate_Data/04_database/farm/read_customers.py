# -- --------------------------------------
# --  READ DATABASES IN SERVER
# -- --------------------------------------
import mysql.connector

cnx = mysql.connector.connect(user='root',
        password='Xncsc8h4',
        host='127.0.0.1',
        database = 'Farm',
        auth_plugin='mysql_native_password')
cursor = cnx.cursor()
# query = ("SELECT * FROM Customers")
query = ("INSERT INTO `Customers` VALUES ('Steve', 'Austin', 'stoneCold@mit.edu')")
cursor.execute(query)
for row in cursor.fetchall():
    print(row)
cnx.commit()
cursor.close()
cnx.close()
