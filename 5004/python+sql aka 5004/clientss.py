#!/usr/bin/env python
# Source Python Network Programming Cookbook, Second Edition -- Chapter - 1

# Import necessary modules

import socket
import sys

""" A simple echo client """
# Define constants
host = 'localhost'
port = 9900

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Connect the socket to the server
server_address = (host, port)
print("--------------------")
print("Connecting to %s port %s" % server_address)
sock.connect(server_address)
# Define the echo client function

        



print ("""
More Peak District-£12.99
Lincolnshire Wolds-£10.99
Vale Of York-£11.99
Peak District-£12.99
Snowdonia-£13.99
Malvern And Warwickshire-£10.99
Cheshire-£12.99""")


# Get search criteria from user

# Ask the user for the area they want to go to
while True:
    area = input("""What area do you want to go to?
    1. Peak District
    2. Lincolnshire
    3. York
    4. North Wales
    5. Warwickshire
    6.Cheshire
    Enter number 1-6: """)

    # Validate the user's input
    if area == "" or area == " ":
        print("try again")
    elif area not in ["1", "2", "3", "4", "5", "6"]:
        print("try again")
    else:
        str(area)
        break

# Ask the user for the minimum and maximum miles
while True:
    min_mile = input("Minimum miles: ")
    max_mile = input("Maximum miles: ")
    if min_mile == "" or min_mile == " " or max_mile == " " or max_mile == "":
        print("try again")
    else:
        str(min_mile)
        str(max_mile)
        break

# Ask the user for the level of difficulty
while True:
    difficulty = input("""Enter level of difficulty:
    1. Easy 
    2. Medium
    3. Hard
    Enter number 1-3: """)

    # Validate the user's input
    if difficulty == "" or difficulty == " ":
        print("try again")
    if difficulty not in ["1", "2", "3"]:
        print("try again")
    else:
        str(difficulty)
        break

# Ask the user for the area they want to go to
while True:
    area1 = input("""What area1 do you want to go to?
    1. Peak District
    2. Lincolnshire
    3. York
    4. North Wales
    5. Warwickshire
    6.Cheshire
    Enter number 1-6: """)

    # Validate the user's input
    if area1 == "" or area1 == " ":
        print("try again")
    elif area1 not in ["1", "2", "3", "4", "5", "6"]:
        print("try again")
    else:
        str(area1)
        break

# Ask the user for the minimum and maximum miles
while True:
    min_mile1 = input("Minimum miles: ")
    max_mile1 = input("Maximum miles: ")
    if min_mile1 == "" or min_mile1 == " " or max_mile1 == " " or max_mile1 == "":
        print("try again")
    else:
        str(min_mile1)
        str(max_mile1)
        break

# Ask the user for the level of difficulty
while True:
    difficulty1 = input("""Enter level of difficulty:
    1. Easy 
    2. Medium
    3. Hard
    Enter number 1-3: """)

    # Validate the user's input
    if difficulty1 == "" or difficulty1 == " ":
        print("try again")
    if difficulty1 not in ["1", "2", "3"]:
        print("try again")
    else:
        str(difficulty1)
        break

while True:
    print("we will card inforamtion early on but wont use it  if u dont selct to use it ")
    print("are u buying books")
    buyornot=int(input("1 for yes 2 for no:"))
    if buyornot in [1,2]:
        if buyornot==1:
            name=input("enter name  on card/account:")
            orginal_card=input("long card number:")
            orginal_expiry=input("expiery code in tis foramt MMYY eg 0522:")
            orginal_security=input("cvv:")
            card=len(str(orginal_card))
            expiry=len(str(orginal_expiry))
            security=len(str(orginal_security))
            if card==16 and   expiry==4 and security==3 and orginal_card.isdigit()   and orginal_expiry.isdigit() and orginal_security.isdigit():
                amount=int(input("ammount of books if your  are books are found:"))
                if amount>0:
                    print("procsiing info")
                    break
                else:
                    print("try again")
            else:
                print("try again")
        if buyornot ==2:
            name=input("enter name  on card/account")
            orginal_card=0
            orginal_expiry=0
            orginal_security=0
            break
        else:
            print("try again")
    else:
        print("try again")



# Send the search criteria to the server
#              0      1         2           3                 4          5             6          7          8                9              10                 11
message = f"{area},{min_mile},{max_mile},{difficulty},{name},{area1},{min_mile1},{max_mile1},{difficulty1},{orginal_card},{orginal_expiry},{orginal_security},{amount}"
sock.sendall(message.encode('utf-8'))

# Receive the response from the server
data = sock.recv(1024)
print(data.decode("utf-8"))
sock.close()



   