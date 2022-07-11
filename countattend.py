#import MySQLdb
import mysql.connector
import datetime

d=datetime.datetime.now()
m=d.strftime("%B")
y=d.strftime("%G")

db=mysql.connector.connect(host="localhost",user="gowthamidb",passwd="Chinnu@1",database="ems")
mycursor=db.cursor()

mycursor.execute("select ename,sum(if(status='present',1,0)),sum(if(status='absent',1,0)) from attendance group by ename")
rs=mycursor.fetchall()

'''
print("Emp_Name\tNo_Presents\tLoPs")
print("------------------------------------------")

for x in result:
	print(x[0],"\t\t",x[1],"\t\t",x[2])

'''
for k in rs:
	nm=k[0]	
	p=k[1]
	a=k[2]
	mycursor.execute("""insert ignore into leaves(ename,month,year,presents,absents) values(%s,%s,%s,%s,%s)""",(nm,m,y,p,a))
	
mycursor.execute("update leaves set lops=tot_days-presents")
	


db.commit()
db.close()
