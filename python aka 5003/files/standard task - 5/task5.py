# Define the Node class to represent each node in the linked list
class Node:
    def __init__(self, data):
        # Initialize the data and next variables for the node
        self.data = data
        self.next = None

# Define the SLinkedList class to represent the linked list itself
class SLinkedList:
    def __init__(self):
        # Initialize the head variable to None for an empty list
        self.head = None

    # Define the print_list method to print the data stored in each node of the linked list
    def print_list(self):
        # Set the current variable to the head of the list
        current = self.head
        while current is not None:
            # Iterate through the list until the end is reached
            print(current.data)
            # Print the data stored in the current node
            current = current.next
            # Set the current variable to the next node in the list

    # Define a method to add a new node with the given data to the beginning of the list
    def add_at_beginning(self, new_data):
        # Create a new node with the given data
        new_node = Node(new_data)
        # Set the next value of the new node to the current head of the linked list
        new_node.next = self.head
        # Set the head of the linked list to the new node
        self.head = new_node

    # Define a method to add a new node with the given data to the end of the list
    def add_at_end(self, new_data):
        # Create a new node with the given data
        new_node = Node(new_data)
        if self.head is None:
            # If the list is empty, set the head of the list to the new node
            self.head = new_node
            return
        current = self.head
        while current.next is not None:
            # Iterate through the list until the end is reached
            current = current.next
        # Set the next value of the last node in the list to the new node
        current.next = new_node

    # Define a method to insert a new node with the given data after the node with the given value
    def insert_after(self, value_before, new_data):
        if value_before is None:
            # If the given value is None, print an error message
            print("No node available to insert after")
            return
        else:
            current = self.head
            while current is not None:
                if current.data == value_before:
                    # If the current node's data matches the given value, insert the new node after it
                    new_node = Node(new_data)
                    new_node.next = current.next
                    current.next = new_node
                    return
                current = current.next
            # If the given value is not found in the list, print an error message
            print("Node not found")

# Create a new linked list
linked_list = SLinkedList()
linked_list.head = Node("Mon")

# Create additional nodes and add them to the linked list
day2 = Node("Tue")
day3 = Node("Thur")
day4 = Node("Fri")
day5 = Node("Sat")
linked_list.head.next = day2
day2.next = day3
day3.next = day4
day4.next = day5

# Insert a new node with the data "Weds" after the node with the data "Tue"
linked_list.insert_after("Tue", "Weds")

# Print the data stored in each node of the linked list
linked_list.print_list()
