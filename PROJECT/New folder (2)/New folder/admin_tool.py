




def ban_delete_user_info(login_username,login_password):

    print("enter 1 to delete user info or 2 for to move them to ban list or 3 to main menu or 4 to exit ")
    choice=input(":")
    if choice == "1":
        conect=sqlite3.connect("system_roles.db")# connects to databse
        c=conect.cursor()# connects to databse
        username=input("")
        c.execute("DELETE FROM unbanned_user WHERE userEnter username of account to ban:"name=?", (username,)).fetchall()
    elif choice == "2":
        username=input("Enter username of account to ban:")
        conect=sqlite3.connect("system_roles.db")# connects to databse
        c=conect.cursor()# connects to databse
        ban_username=c.execute("SELECT username FROM unbanned_user ", ).fetchall()
        ban_username=tuple(i[0] for i in ban_username)
        if username in ban_username:
            ban_PWD=c.execute("SELECT PWD FROM unbanned_user WHERE username=?", (username,)).fetchall()
            ban_PWD=tuple(i[0] for i in ban_PWD)
            ban_email=c.execute("SELECT email FROM unbanned_user WHERE username=?", (username,)).fetchall()
            ban_email=tuple(i[0] for i in ban_email)
            ban_full_name=c.execute("SELECT full_name from unbanned_user WHERE username=?", (username,)).fetchall()
            ban_full_name=tuple(i[0] for i in ban_full_name)
            ban_roles=c.execute("SELECT roles FROM unbanned_user WHERE username=?", (username,)).fetchall()
            ban_roles=tuple(i[0] for i in ban_roles)
            c.execute("DELETE FROM unbanned_user WHERE username=?", (username,)).fetchall()
            reason="bad"
            c.execute("INSERT INTO banned_user (email,username,PWD,full_name,roles,reason) VALUES (?,?,?,?,?,?)",(ban_email[0],ban_username[0],ban_PWD[0],ban_full_name[0],ban_roles[0],reason))
            conect.commit()
            conect.close
            print("yes")
            main()
    elif choice == "3":
        main()
    elif choice == "4":
        print("thanks for using the pogram")

    exit()

def reportbug(login_username,login_password):
    tz=pytz.timezone("Europe/London")
    time=datetime.now(tz)
    time=str(time)
    f=open("C:/Users/Talha/Desktop/work/wolf-terminal/sqllitesutdio work/New folder/logfile/bug_report.txt","w+")
    f.write(login_username + " "+time +"\r\n")
    f.close
    full_name=input("username of user who made complaint: ")
    emails=input("email of user who made complaint: ")
    files=full_name+"_"+emails+"_"+time+" gmt"+".txt"
    files=files.replace(" ","_").replace(":","-")
    print(files)
    f=open(files,"w+")
    i=0
    f.write(login_username+" "+time+"\r\n")
    while i <10:
        i=i+1
        complaint=input("user complain:")
        f.write(str(i)+":"+complaint+"\r\n")
    f.close()
    try:
        fromaddr = "noreplyresit@gmail.com"
        toaddr = "talhaasher14@gmail.com"
        subject = "complaunt"+ full_name + " " +emails +" "+time
        msg = MIMEMultipart()
        msg['From'] = fromaddr
        msg['To'] = toaddr
        msg['Subject'] = subject
        body = "complaint of "+ subject
        msg.attach(MIMEText(body, 'plain'))
        p=files
        path="C:/Users/Talha/Desktop/work/wolf-terminal/sqllitesutdio work/New folder/fils"
        w=path+"/"+p
        filename = files
        attachment = open(w, "rb")
        p = MIMEBase('application', 'octet-stream')
        p.set_payload((attachment).read())
        encoders.encode_base64(p)
        p.add_header('Content-Disposition', "attachment; filename= %s" % filename)
        msg.attach(p)
        s = smtplib.SMTP('smtp.gmail.com', 587)
        s.starttls()
        s.login(fromaddr, "aQW8m7WcKTK*NpA4m-@D_$#AT8rE7MSS9m*NS?7wv?_Bbd-GEnu3MrABqY+@23FXeA")
        text = msg.as_string()
        s.sendmail(fromaddr, toaddr, text)
        s.quit()
        os.remove(w)
        exit()
    except:
        print("not able to send it")
        exit()
    
def unban(login_username,login_password):
    tz=pytz.timezone("Europe/London")
    time=datetime.now(tz)
    time=str(time)
    f=open("C:/Users/Talha/Desktop/work/wolf-terminal/sqllitesutdio work/New folder/logfile/unban.txt","w+")
    f.write(login_username + " "+time+"\r\n")
    f.close