import mysql.connector
import datetime

d=datetime.datetime.now()
m=d.strftime("%B")
yr=d.strftime("%G")

db=mysql.connector.connect(host="localhost",user="gowthamidb",passwd="Chinnu@1",database="ems")
mycursor=db.cursor()

mycursor.execute("select emp.empid,emp.pay,leaves.lops from emp,leaves where emp.ename=leaves.ename order by emp.empid")

rs=mycursor.fetchall()

for i in rs:
	x=i[0]
	y=i[1]
	z=i[2]
	#print(x," ",y," ",z)
	mycursor.execute("""insert into salary(empid,basic,lops,month,year) values(%s,%s,%s,%s,%s)""",(x,y,z,m,yr))

mycursor.execute("update salary set da=basic*0.7,hra=basic*0.15,pf=basic*0.12,allow=basic*.05,ded=(lops*basic)/30,gross=basic+da+hra+allow,netsalary=gross-(ded+pf)")

db.commit()
db.close()
























