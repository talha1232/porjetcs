from datetime import datetime
import pytz
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders


full_name=input("username of user who made complaint: ")
emails=input("email of user who made complaint: ")
tz=pytz.timezone("Europe/London")
time=datetime.now(tz)
time=str(time)
files=full_name+"_"+emails+"_"+time+" gmt"+".txt"
files=files.replace(" ","_").replace(":","-")
path="C:\Users\Talha\Desktop\work\wolf-terminal\sqllitesutdio work\New folder"
path=path.replace("\","/")
print(files)
f=open(files,"w+")
i=0
while i <10:
    i=i+1
    complaint=input("user complain: ")
    f.write(str(i)+":"+complaint+"\r\n")
f.close()



