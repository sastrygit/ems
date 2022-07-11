#import MySQLdb
import mysql.connector
import time
from datetime import date

db=mysql.connector.connect(host="localhost",user="gowthamidb",passwd="Chinnu@1",database="ems")
mycursor=db.cursor()

mycursor.execute("select ename,status from attendance")
result=mycursor.fetchall()

print("Rollno \t\t status \t Date:",date.today())
print("-----------------------------------------------------------")

for x in result:
	print(x[0],"\t\t",x[1])
print()

db.commit()
db.close()
