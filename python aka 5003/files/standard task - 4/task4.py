import sys                                                      #needed for maxsize
  
class greedy_algo_graph(): 
  
    def __init__(start, vertex):                               #implements g-raph as adjacency matrix
        start.x = vertex                                       #number of vertex
        start.greedy_algo_graph = [[0 for column in range(vertex)]         #adjacency matrix with- no edges (all connections set to zero)
                    for row in range(vertex)] 
  
    def MST_print(start, parent): 
        print ("Edge \t Weight")
        for i in range(1, start.x): 
            print (parent[i], "-", i, "\t", start.graph[i][ parent[i] ])
  
                                                                #from reached nodes find the unreached node with the minimum cost
    def keyminimimum(start, key, mstSet): 
        minimum = sys.maxsize                                       #set min to infinity (use maxsize which is next best thing!)
        for x in range(start.x):                                 #count through number of vertex
            if key[x] < minimum and mstSet[x] == False:             #if vertex is less than min and unreached
                minimum = key[x]                                    #assign to min 
                min_index = x                                  #min_index is position of min in key
        return min_index                                        #return min_index
  
                                                                #find MST 
    def mstprim(start): 
        key = [sys.maxsize] * start.x                            #initialise key to list of values all set to infinity; same length as start.V              
        parent = [None] * start.x                                #list for constructed MST 
        key[0] = 0                                              #set first element of key to zero (this is where we start)                                                                                   
        mstSet = [False] * start.x                               #mstSet is list of booleans set to False
        parent[0] = -1                                          #first element of parent list set to -1                        
  
        for vertex in range(start.x):                            #go through all vertex
            u = start.keyminimimum(key, mstSet)                        #call keyminimimum; keyminimimum returns u (index of unreached node) 
            mstSet[u] = True                                    #mstSet at index of node is set to True                                                                                                
            for x in range(start.x):                             #go through all vertex
                
                #if edge from u to connected node v is > 0 (if there is an edge)
                #and mstSet[v] is unreached 
                #and key[v] is greater than the edge cost
                #(only if the current edge cost is greater will need to change)
                #key[v] takes edge cost
                if start.graph[u][x] > 0 and mstSet[x] == False and key[x] > start.graph[u][x]:
                    key[x] = start.graph[u][x]
                    parent[x] = u                               #parent[v] is index of node; so list of parents (nodes) is the MST
  
        start.MST_print(parent)                                   #print the list of parents, i.e. the MST                                
  
g = greedy_algo_graph(5) 
g.greedy_algo_graph = [ [0, 2, 0, 6, 0], 
            [2, 0, 3, 8, 5], 
            [0, 3, 0, 0, 7], 
            [6, 8, 0, 0, 9], 
            [0, 5, 7, 9, 0]] 
  
g.mstprim()
