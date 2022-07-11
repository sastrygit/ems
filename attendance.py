#import MySQLdb
import mysql.connector
import datetime
t=datetime.datetime.now()

db=mysql.connector.connect(host="localhost",user="gowthamidb",passwd="Chinnu@1",database="ems")

mycursor=db.cursor()
mycursor.execute("select ename,status from emp")

rs=mycursor.fetchall()
for i in rs:
	x=i[0]
	y=i[1]
	mycursor.execute("""insert into attendance values(%s,%s,%s)""",(x,t,y))

mycursor.execute("update attendance inner join recogface on recogface.empid=attendance.ename set attendance.status='present'")

db.commit()
db.close()
