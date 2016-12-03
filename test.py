# enable debugging
import cgitb
import mysql.connector
#import mysql.connector.cursor

cgitb.enable()

print("Content-Type: text/html\n\n")  # html markup follows

print("""
<html>
  <Title>Hello in HTML</Title>
<body>
  <p>Hello There!</p>
  <p><b>Hi There!</b></p>  
</body>
</html> """)

with open ("data.txt", "r") as myfile:
    data=myfile.read()
    print(data)
