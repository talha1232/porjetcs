
# Define the BinaryTree class
class BinaryTree:
    def __init__(self):
        self.root = None   # Initialize the root node as None

    # Public remove method, which removes a node with the given key from the tree
    def remove(self, key):
        if not self.root:
            # Case 1: empty tree
            return False
        
        parent = None
        node = self.root
        while node and node.val != key:
            parent = node
            node = node.left if key < node.val else node.right
        
        if not node:
            # Case 1: target node not found
            return False
        
        if not node.left or not node.right:
            # Case 2 and 3: target node has only one child
            child = node.left or node.right
            if not parent:
                # Case 2.1: target node is root
                self.root = child
            elif node is parent.left:
                # Case 2.2: target node is left child of parent
                parent.left = child
            else:
                # Case 2.3: target node is right child of parent
                parent.right = child
        else:
            # Case 4: target node has both left and right children
            successor_parent = node
            successor = node.right
            while successor.left:
                successor_parent = successor
                successor = successor.left
            node.val = successor.val
            if successor_parent.left is successor:
                successor_parent.left = successor.right
            else:
                successor_parent.right = successor.right
        
        return True
