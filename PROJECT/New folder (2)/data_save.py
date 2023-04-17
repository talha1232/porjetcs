import email
from re import A
import pandas as pd
import smtplib
import numpy as np      
import sqlite3
import requests
from datetime import datetime
import random

def main():
    choice=input("enter 1 to make a new account adn enter 2 to login to yur account ") #gives uer option top start program all over or end it 
    if choice=="1":
        create()# takes to satrt of funtion
    if choice =="2":
        login() # takes to funtio that ends program

def login():
    print("""enter "e9" anythime to exit porgram or "main" to go to main menu """)
    conect=sqlite3.connect("email_and_data.db")
    c=conect.cursor()
    r=c.execute("""SELECT username FROM userdata""").fetchall()
    list_username=tuple(i[0] for i in r)
    login_username=input("Enter username:")
    if login_username in list_username:
        password=c.execute("SELECT PWD FROM userdata WHERE username=?", (login_username,)).fetchall()
        password=tuple(i[0] for i in password)
        login_password=input("Enter password:")
        if login_password==password[0]:
            print("welcome "+login_username)
            main()
        elif login_password =="e9":
            print("thanks for using our porgram")
        elif login_password == "main":
            main()
        else:
            print("lets try again")
            login()
    elif login_username not in list_username:
        print("not in here")
        print("proceed to create a account")
        create()
    elif login_username =="e9":
        print("thanks for using our porgram")
    elif login_username == "main":
        main()

def create():
    print("""type " e9 "  anytime to exit program or "main" to go to main meanu""")
    email=input("enter email:").lower()
    conect=sqlite3.connect("email_and_data.db")
    c=conect.cursor()
    data_email = c.execute("""SELECT email FROM userdata""").fetchall()# fetches inforamtion
    email_list=tuple(i[0] for i in data_email) #makes into list that cdoe can use
    if email in email_list:
        print("already exist")
        create()
    elif email == "e9":
                print("thank u for using our pogram ")
    elif email == "main":
        main()
    elif email not in email_list:
        username=input("Enter username:").lower()
        full_name=input("Enter full name:").lower()
        data_username = c.execute("""SELECT username FROM userdata""").fetchall()# fetches inforamtion
        username_list=tuple(i[0] for i in data_username) #makes into list that cdoe can use
        if username in username_list:
            print("already exist")
            create()
        elif username == "e9":
                print("thank u for using our pogram ")
        elif username =="main":
            main()
        elif username not in username_list:
            choice=input("enter 1 do u want to create your own password or enter 2 u want to genrate a random 13 chracter password")
            if choice =="1":
                password_length = 13
                possible_characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!£$%^&*()_+-[{]}:;@'~#<,>.?/"
                random_character_list = [random.choice(possible_characters) for i in range(password_length)]
                password = "".join(random_character_list)
                if password == "e9":
                    print("thank u for using our pogram ")
                elif password == "main":
                    main()
                else:
                    c.execute("INSERT INTO userdata (email,username,PWD,full_name) VALUES (?,?,?,?)",(email,username,password,full_name))
                    conect.commit()# commitas dat to database
                    conect.close()#clsoese conection   to database
                    main()

            if choice == "2":
                password=input("Enter password:")
                confirmpassword=input("Confirm password:")
                if password == confirmpassword:
                    c.execute("INSERT INTO userdata (email,username,PWD,full_name) VALUES (?,?,?,?)",(email,username,password,full_name))
                    conect.commit()# commitas dat to database
                    conect.close()#clsoese conection   to database
                    main()
                elif password != confirmpassword:
                    print("try again ")
                    create()
                elif password == "e9":
                    print("thank u for using our pogram ")
                elif password == "main":
                    main()
        


main()