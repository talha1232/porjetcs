from datetime import datetime
import sqlite3
now = datetime.now().time() # time object
conect=sqlite3.connect("python.db") #connect to databse
c=conect.cursor()#connect to databse
c.execute(" INSERT INTO usertime (time) VALUES (?) ", (now)) # insert data to databse
conect.commit()# commits dat to database
conect.close()
