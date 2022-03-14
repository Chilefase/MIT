#TO READ FROM DB FROM MYSQL# 
# 
# 
# -----------------------------------
# To solve the driver problem
# uninstall the following
# -----------------------------------
# pip3 uninstall mysql-connector
# -----------------------------------
# Then install
# -----------------------------------
# pip3 install mysql-connector-python
# ----------------------------------- 
from flask import Flask
from flaskext.mysql import MySQL
import mysql.connector

cnx = mysql.connector.connect(user='root', 
    password='Xncsc8h4',
    host='127.0.0.1',
    database='education',
    auth_plugin='mysql_native_password')

# ----------------------------------- 
#           YOUR CODE
# ----------------------------------- 

# web application
app = Flask(__name__)

# connect to db
mysql = MySQL()
app.config['MYSQL_DATABASE_USER']     = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Xncsc8h4'
app.config['MYSQL_DATABASE_DB']       = 'education'
app.config['MYSQL_DATABASE_HOST']     = 'localhost'
mysql.init_app(app)

# ----------------------------------- 
#           YOUR CODE
# ----------------------------------- 

college = input('Enter college name: ')
students = input('Enter student population: ')

cursor = cnx.cursor()
query = (f'INSERT INTO `Colleges` VALUES (NULL,"{college}","{students}",NULL,NULL,NULL)')

cursor.execute(query)

query = ('SELECT * FROM Colleges')
cursor.execute(query)

#print
for row in cursor.fetchall():
    print(row)
    
cnx.commit()
cursor.close()
cnx.close()
