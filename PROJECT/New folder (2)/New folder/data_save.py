import email
from re import A
import pandas as pd
import smtplib
import numpy as np      
import sqlite3
from datetime import datetime
import random
from admin_tool import admin_ethical
from admin_tool import admin_dev
from admin_tool import dev
from admin_tool import mod
from admin_tool import helpers
from admin_tool import member
def main():
    choice=input("enter 1 to make a new account and enter 2 to login to yur account ") #gives uer option top start program all over or end it 
    if choice=="1":
        create()# takes to satrt of funtion
    if choice =="2":
        login() # takes to funtio that ends program

def login():
    print("""type 1 anythime to exit porgram or type 2  to go to main menu """)
    conect=sqlite3.connect("system_roles.db")
    c=conect.cursor()
    r=c.execute("""SELECT username FROM ubanned_user""").fetchall()
    list_username=tuple(i[0] for i in r)
    login_username=input("Enter username:")
    if login_username in list_username:
        password=c.execute("SELECT PWD FROM ubanned_user WHERE username=?", (login_username,)).fetchall()
        password=tuple(i[0] for i in password)
        login_password=input("Enter password:")
        if login_password==password[0]:
            role=c.execute("SELECT roles FROM ubanned_user WHERE username=?", (login_username,)).fetchall()
            roles=tuple(i[0] for i in role)
            if "ethical_admin"==role[0]:
                admin_ethical(login_username,login_password)
            elif "dev_admin"==role[0]:
                admin_dev(login_username,login_password)
            elif "dev" == role[0]:
                dev(login_username,login_password)
            elif "mod" == role[0]:
                mod(login_username,login_password)
            elif "helpers" ==role[0]:
                helpers(login_username,login_password)
            elif "member" == role[0]:
                member(login_username,login_password)
            else:
                login()
        elif login_password =="1":
            print("thanks for using our porgram")
        elif login_password == "2":
            main()
        else:
            print("lets try again")
            login()
    elif login_username not in list_username:
        print("not in here")
        print("proceed to create a account")
        create()
    elif login_username =="1":
        print("thanks for using our porgram")
    elif login_username == "2":
        main()

def create():
    print("""type 1  anytime to exit program or type 2 to go to main meanu""")
    email=input("enter email:").lower()
    conect=sqlite3.connect("system_roles.db")
    c=conect.cursor()
    data_email = c.execute("""SELECT email FROM ubanned_user""").fetchall()# fetches inforamtion
    email_list=tuple(i[0] for i in data_email) #makes into list that cdoe can use
    if email in email_list:
        print("already exist")
        main()
    elif email not in email_list:
        print("""type 1  anytime to exit program or type 2 to go to main meanu""")
        username=input("Enter username:").lower()
        full_name=input("Enter full name:").lower()
        data_username = c.execute("""SELECT username FROM ubanned_user""").fetchall()# fetches inforamtion
        username_list=tuple(i[0] for i in data_username) #makes into list that cdoe can use
        if username in username_list:
            print("already exist")
            create()
        elif username == "1":
                print("thank u for using our pogram ")
        elif username =="2":
            main()
        elif username not in username_list:#
            print("""type 1  anytime to exit program or type 2 to go to main meanu""")
            choice=input("enter 1 do u want to create your own password or enter 2 u want to genrate a random 13 chracter password")
            if choice =="1":
                password_length = 13
                possible_characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!£$%^&*()_+-[{]}:;@'~#<,>.?/"
                random_character_list = [random.choice(possible_characters) for i in range(password_length)]
                password = "".join(random_character_list)
                roles="member"
                print( "your password "+ password)
                if password == "1":
                    print("thank u for using our pogram ")
                elif password == "2":
                    main()
                else:
                    c.execute("INSERT INTO ubanned_user (email,username,PWD,full_name,roles) VALUES (?,?,?,?,?)",(email,username,password,full_name,roles))
                    conect.commit()# commitas dat to database
                    conect.close()#clsoese conection   to database
                    main()

            if choice == "2":
                print("""type 1  anytime to exit program or type 2 to go to main meanu""")
                password=input("Enter password:")
                confirmpassword=input("Confirm password:")
                roles="member"
                if password == confirmpassword:
                    c.execute("INSERT INTO ubanned_user (email,username,PWD,full_name,roles) VALUES (?,?,?,?,?)",(email,username,password,full_name,roles))
                    conect.commit()# commitas dat to database
                    conect.close()#clsoese conection   to database
                    main()
                elif password != confirmpassword:
                    print("try again ")
                    create()
                elif password == "1":
                    print("thank u for using our pogram ")
                elif password == "2":
                    main()
    elif email == "1":
            print("thank u for using our pogram ")
    elif email == "2":
        main()
    
        
def exit():
    print("do u want to exit program enter 1 or 2 to go to main meanu")
    choice=input("Enter choice:")
    if choice == "1":
        print("thanks for using our porgram")
    elif choice == "2":
        main()


main()