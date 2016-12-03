# enable debugging
from dbconfig import *
import configparser 
import cgitb
import mysql.connector
import mysql.connector.cursor
import sys
import os
path = os.path.dirname(os.path.abspath(__file__))

sys.path.append(path)
cgitb.enable()


#  Better use config.py for mysql parameters.
db = get_mysql_param()
cursor = cnx.cursor()
cnx = mysql.connector.connect(user=db['user'], password=db['password'],
                              host=db['host'],
                             database=db['database'])
config = configparser.ConfigParser()
config.read('./dbconfig.txt')

print("Content-Type: text/html\n\n")  # html markup follows
print(path)
print("""
<html>
  <Title>Hello in HTML</Title>
<body>
  <p>Hello There!</p>
  <p><b>Hi There!</b></p>  
</body>
</html> """)

###ini = open('dbconfig.txt','r')
###config.readfp(ini)
###print(config)
##db=config
###db = get_mysql_param()
##host = db.get('mysql','host')
##database = db.get('mysql','database')
##
##user = db.get('mysql','user')
##password = db.get('mysql','password')
##cnx = mysql.connector.connect(user=user,password=password,host=host,database=database)
##




cursor.execute("SELECT * FROM address")

# print all the first cell of all the rows
for row in cursor.fetchall() :
       print(row[0])
       print("\n")

