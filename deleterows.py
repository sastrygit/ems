#import MySQLdb
import mysql.connector

db=mysql.connector.connect(host="localhost",user="suryans",passwd="lalitha",database="ems")
mycursor=db.cursor()

mycursor.execute("TRUNCATE TABLE recogface")

db.commit()
db.close()
