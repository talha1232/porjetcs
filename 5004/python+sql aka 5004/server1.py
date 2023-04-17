# Import necessary modules
import sqlite3
import socket
import sys
import time

# Define host and port
host = 'localhost'
port = 9900

# Define data payload size and maximum number of queued connections
data_payload = 2048
backlog = 5

# Create a TCP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Enable reuse address/port
sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

# Bind the socket to the port
server_address = ('localhost', port)
print("Starting up echo server on %s port %s" % server_address)
sock.bind(server_address)

# Listen to clients, backlog argument specifies the max no. of queued connections
sock.listen(backlog)

# Accept a connection
client, address = sock.accept()

# Receive data from the client and split it into a list of strings
data = client.recv(data_payload).decode("utf-8").split(',')

# Extract the name of the client from the received data
name = data[4]

# Remove the name from the list of received data
delnme=data.pop(4)

# Convert the remaining items in the list to integers
list_int = [int(i) for i in data ]


#Determine the chosen area based on user input
if list_int[0] == 1:
    chosen_area = "PeakDistrict"
elif list_int[0] == 2:
    chosen_area = "Lincolnshire"
elif list_int[0] == 3:
    chosen_area = "York"
elif list_int[0] == 4:
    chosen_area = "NorthWales"
elif list_int[0] == 5:
    chosen_area = "Warwickshire"
elif list_int[0] == 6:
    chosen_area = "Cheshire"
# Determine the second  chosen area based on user input 
if list_int[4] == 1:
    chosen_area1 = "PeakDistrict"
elif list_int[4] == 2:
    chosen_area1 = "Lincolnshire"
elif list_int[4] == 3:
    chosen_area1 = "York"
elif list_int[4] == 4:
    chosen_area1 = "NorthWales"
elif list_int[4] == 5:
    chosen_area1 = "Warwickshire"
elif list_int[4] == 6:
    chosen_area1 = "Cheshire"


# Determine the chosen minimum area based on user input
if list_int[1] >= 0:
    chosen_minimum_area = list_int[1]
# Determine thesedn  chosen minimum area based on user input
if list_int[5] >= 0:
    chosen_minimum_area1 = list_int[5]

# Determine the chosen maximum area based on user input
if list_int[2] >= 0:
    chosen_maximum_area = list_int[2]
# Determine the second  chosen maximum area based on user input
if list_int[6] >= 0:
    chosen_maximum_area1 = list_int[6]


# Determine the chosen difficulty based on user input
if list_int[3] == 1:
    chosen_difficulty = "Easy"
if list_int[3] == 2:
    chosen_difficulty = "Medium"
if list_int[3] == 3:
    chosen_difficulty = "Hard"
# Determine the chosen difficulty based on user input
if list_int[7] == 1:
    chosen_difficulty1 = "Easy"
if list_int[7] == 2:
    chosen_difficulty1= "Medium"
if list_int[7] == 3:
    chosen_difficulty1 = "Hard"
# Call database_query function to retrieve the relevant data from the database
orginal_card=list_int[8]
orginal_expiry=list_int[9]
orginal_security=list_int[10]
amount=list_int[11]

# Connect to the SQLite database
conection = sqlite3.Connection("D:/New folder/database.db")
cursor = conection.cursor()

# Query the database for the walk names, book names, and page numbers that match the user's query parameters
cursor.execute("SELECT walk_name, book, page FROM book_detail WHERE area = ? AND distance BETWEEN ? AND ? AND dificulty = ?",(chosen_area, chosen_minimum_area, chosen_maximum_area, chosen_difficulty))
result1 = cursor.fetchall()

# Execute Query 2
cursor.execute("SELECT walk_name, book, page FROM book_detail WHERE area = ? AND distance BETWEEN ? AND ? AND dificulty = ?",(chosen_area1, chosen_minimum_area1, chosen_maximum_area1, chosen_difficulty1))
result2 = cursor.fetchall()

walkname_book_page = set(result1 +result2)


# Query the database for the book names that match the user's query parameters
cursor.execute("SELECT  book FROM book_detail WHERE area = ? AND distance BETWEEN ? AND ? AND dificulty = ?",(chosen_area, chosen_minimum_area, chosen_maximum_area, chosen_difficulty))
booksearch1=cursor.fetchall()
cursor.execute("SELECT  book FROM book_detail WHERE area = ? AND distance BETWEEN ? AND ? AND dificulty = ?",(chosen_area1, chosen_minimum_area1, chosen_maximum_area1, chosen_difficulty1))
booksearch2 = cursor.fetchall()
booksearch =set(booksearch1 +booksearch2)



ans=[]
resultingstring=[]
cost_statement=[]
timesodres=0
for i in walkname_book_page:
    walkname = i[0]
    book = i[1]
    page = i[2]
    # Construct the answer string for each row and append it to ans
    cursor.execute("SELECT price FROM book_price WHERE book =?", (book,))
    real=str(cursor.fetchone())
    answer = "walk name:" + str(walkname) + "--------book:" + str(book) + " ----------page:" + str(page)+" ----------price £"+real[1:6]
    ans.append(answer)

for book_search in booksearch:
    quantity_books = next(iter(book_search))
    print(quantity_books)
    
    # Query the database for the quantity of the selected book
    cursor.execute("SELECT quantity FROM book_order WHERE book=?", (quantity_books,))
    quantity = cursor.fetchone()
    quantity = quantity[0]
    
    # If the book is in stock
    if quantity is not None:
        
        # If the requested amount is greater than the stock quantity
        if amount > quantity:
            # If there is no stock available
            if quantity == 0:
                print(0.5)
                result = f"{quantity_books} is out of stock item come back tomorrow we will have it"
                cursor.execute("UPDATE book_order SET  quantity = quantity + ? WHERE book=?", (amount, quantity_books))
                resultingstring.append(result)
                conection.commit()
            # If there is some stock available
            if quantity != 0 and amount > quantity:
                print(1)
                left = amount - quantity
                result = f"{quantity_books} is out of stock item come back tomorrow we will have it"
                cursor.execute("UPDATE book_order SET  quantity = quantity + ? WHERE book=?", (left, quantity_books))
                resultingstring.append(result)
                conection.commit()
        # If the requested amount is less than or equal to the stock quantity
        if amount <= quantity:
            print(2)
            # Point c: the user's payment is successful
            results = f"there are  {quantity} {quantity_books} "
            cost_statement = []
            for item in walkname_book_page:
                print(3)
                walkname = item[0]
                book = item[1]
                page = item[2]
                cursor.execute("SELECT price FROM book_price WHERE book=?", (book,))
                prices = cursor.fetchone()
                if prices is not None:
                    print(4)
                    cursor.execute("SELECT totalorder FROM scamcheck WHERE name=?", (name,))
                    orders = cursor.fetchone()
                    orders = list(orders)
                    # If the user has previously ordered more than 100 books
                    if orders[0] > 100:
                        total_price = float(amount) * prices[0]
                        cursor.execute("UPDATE book_order SET quantity = quantity - ? WHERE book=?", (amount, quantity_books))
                        book_price = f"payment successful walk name:{walkname}book name :{book}  page:{page} quantity:{amount} prices:£{total_price}"
                        timesodres += amount
                        cost_statement.append(book_price)
                        conection.commit()
                        break
                    else:
                        # If the user has previously ordered less than or equal to 100 books
                        total_price = float(amount) * prices[0]
                        cursor.execute("UPDATE book_order SET quantity = quantity - ? WHERE book=?", (amount, quantity_books))
                        book_price = f"payment successful walk name:{walkname}book name :{book}  page:{page} quantity:{amount} prices:£{total_price}"
                        timesodres += amount
                        cost_statement.append(book_price)
                        conection.commit()
            
            resultingstring.append(results)
    
    # If the book is not in stock
    else:
        print(6)
        # Point e: the book cannot be found in the inventory
        result = f"no match  for {quantity_books}"
        resultingstring.append(result)

# Update the user's order history
cursor.execute("UPDATE scamcheck SET totalorder = totalorder + ? ,name =? WHERE name =?", (timesodres, name, name))
conection.commit()
            



# Construct the response string  
response = "{}\n{}\n{}\n{}\n\n".format(name, "\n".join(ans), "\n".join(resultingstring), "\n".join(cost_statement)).encode("utf-8")

print("Sending response to client:", response)
time.sleep(60)
client.send(response)

cursor.close()
conection.close()

        


       

