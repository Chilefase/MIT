from flask import Flask, render_template, request, redirect
from flaskext.mysql import MySQL
import mysql.connector

cnx = mysql.connector.connect(user='root', 
    password='MyNewPass',
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
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Xncsc8h4'
app.config['MYSQL_DATABASE_DB'] = 'education'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

# ----------------------------------- 
#           YOUR CODE
# ----------------------------------- 
@app.route('/colleges')
def colleges():
    cursor = mysql.get_db().cursor()
    response = cursor.execute('SELECT * FROM Colleges')
    html = ''
    if response > 0:
        colleges = cursor.fetchall()
        for college in colleges:
            html += college[1] + '<br>'
        return html
    
# start server
if __name__ == '__main__':
    app.run(debug=True, port=3000)

#To know my IP open ngrok and paste: ngrok http 3000
#Open in the browser: http://localhost:3000/
