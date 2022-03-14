# import package flask
from flask import Flask

# ----------------------------------- 
#           YOUR CODE
# ----------------------------------- 

# create a flask app
app = Flask(__name__)

# create route
@app.route('/')
def hello_world():
    return 'Hello People!'

# start server
if __name__ == '__main__':
    app.run(debug=True, port=3000)
    
#To know my IP open ngrok and paste: ngrok http 3000

#Open in the browser: http://localhost:3000/
