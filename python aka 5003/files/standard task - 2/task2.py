# Define the node structure for the binary search tree
# Define the node structure for the binary search tree
class nodeclass:
    def __init__(start, valuekey):
        # Initialize the node with a value, left and right child nodes
        start.value = valuekey
        start.right = None
        start.left = None

# Define the binary search tree and its operations
class bTclass:
    def __init__(start):
        # Initialize the binary search tree with a null root
        start.root = None
    
    # Insert a new value into the binary search tree
    def valueinsert(start, valuekey):
        # If the tree is empty, make the new node the root
        if start.root is None:
            start.root = nodeclass(valuekey)
        else:
            # Otherwise, call the recursive insert function
            start._valueinsert(start.root, valuekey)

    # Recursive function to insert a value into the binary search tree
    def _valueinsert(start, node, valuekey):
        # If the new value is less than the current node's value, move to the left child
        if valuekey < node.value:
            # If the left child doesn't exist, create a new node
            if node.left is None:
                node.left = nodeclass(valuekey)
            else:
                # Otherwise, call the recursive function on the left child node
                start._valueinsert(node.left, valuekey)
        else:
            # If the new value is greater than or equal to the current node's value, move to the right child
            if node.right is None:
                # If the right child doesn't exist, create a new node
                node.right = nodeclass(valuekey)
            else:
                # Otherwise, call the recursive function on the right child node
                start._valueinsert(node.right, valuekey)
    
    # Iterative function to find a value in the binary search tree
    def findi(start, valuekey):
        # Start at the root of the tree
        cuurenlty = start.root
        while cuurenlty is not None:
            # If the value is found, return True
            if valuekey == cuurenlty.value:
                return True
            # If the value is less than the current node's value, move to the left child
            elif valuekey < cuurenlty.value:
                cuurenlty = cuurenlty.left
            # If the value is greater than the current node's value, move to the right child
            else:
                cuurenlty = cuurenlty.right
        
    # Recursive function to find a value in the binary search tree
    def findr(start, valuekey):
        # Call the recursive function on the root node
        return start._findR(start.root, valuekey)
    
    def _findR(start, node, valuekey):
        # If the node is null or the value is found, return True or False
        if node is None or node.value == valuekey:
            return node is not None
        # If the value is less than the current node's value, move to the left child
        elif valuekey < node.value:
            return start._findR(node.left, valuekey)
        # If the value is greater than the current node's value, move to the right child
        else:
            return start._findR(node.right, valuekey)
            
# Initialize the binary search tree
bt = bTclass()

# Insert some values into the binary search tree
bt.valueinsert(50)
bt.valueinsert(30)
bt.valueinsert(70)
bt.valueinsert(20)
bt.valueinsert(40)
bt.valueinsert(60)
bt.valueinsert(80)

# Test the iterative find function
print(bt.findi(60)) # True

# Test the recursive find function
print(bt.findr(40)) # True
print(bt.findr(100)) # False


