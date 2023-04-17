
class AdjacencyGraph:
    def __init__(self):
        self.adjacentmatrix=[]
    
    def add_vertex(self):
        self.adjacentmatrix.append([0] * len(self.adjacentmatrix))
        for rows in self.adjacentmatrix:
            rows.append(0)
    
    def add_edge(self, vertex1, vertex2):
        if self.adjacentmatrix[vertex1-1][vertex2-1]==1:
            print("Edge already exists")
        else:
            self.adjacentmatrix[vertex1-1][vertex2-1] = 1
            self.adjacentmatrix[vertex2-1][vertex1-1] = 1
    
    def remove_edge(self, vertex1, vertex2):
        if self.adjacentmatrix[vertex1-1][vertex2-1] == 0:
            print("No edge to remove")
        else:
            self.adjacentmatrix[vertex1-1][vertex2-1] = 0
            self.adjacentmatrix[vertex2-1][vertex1-1] = 0
        
    
    def graph_printer(self):
        print("  ",end="")
        for i in range(len(self.adjacentmatrix)+1):
            print("----",end="")
        print("  ",end="")
        for i in range(len(self.adjacentmatrix)):
            print("----", end="")
        print(" \n")
        for i in range(len(self.adjacentmatrix)):
            print("{:3}|".format(i+1), end="")
            for j in range(len(self.adjacentmatrix)):
                print("{:3}".format(self.adjacentmatrix[i][j]), end="")
            print("\n")

        

# Create a new graph
graph = AdjacencyGraph()

# Add 5 vertices to the graph
for i in range(5):
    graph.add_vertex()

# Add some edges to the graph
graph.add_edge(1, 2)
graph.add_edge(2, 3)
graph.add_edge(3, 4)
graph.add_edge(4, 5)
graph.add_edge(5, 1)
graph.add_edge(1, 3)
graph.add_edge(3, 5)

# Print the graph
graph.graph_printer()

# Remove some edges from the graph
graph.remove_edge(1, 2)
graph.remove_edge(4, 5)

# Print the graph again
graph.graph_printer()
