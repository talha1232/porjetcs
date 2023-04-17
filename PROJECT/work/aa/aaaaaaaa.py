from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from msilib.schema import MIME

def sendmail(from_email, to_email,password,subject,message,filename):
    msg=MIMEMultipart()
    msg["From"]=from_email
    msg["Subject"]=subject
    msg["To"]=to_email
    
    msg.attach(MIMEText(filename,""))
    with open(filename,"rb") as attachment:
        part= MIMEBase("application","octet-stream")
        part.set_payload(attachment.read())


    encoders.encod_base64(part)
    part.add_header("")