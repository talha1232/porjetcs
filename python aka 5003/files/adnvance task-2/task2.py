# Import the heapq module to use a priority queue to store distances.
import heapq

# Define the graph with its edges.
graph = {
    'O': {'A': 2, 'B': 5, 'C': 4},
    'A': {'B': 2, 'D': 7, 'F': 12},
    'B': {'C': 1, 'D': 4, 'E': 3},
    'C': {'E': 4},
    'D': {'E': 1, 'T': 5},
    'E': {'T': 7},
    'F': {'T': 3},
    'T': {}
}

def dijkstra(graph, start, end):
    # Initialize dictionaries for both the distances and any previous nodes.
    distances = {v: float('inf') for v in graph}  # Set all distances to infinity.
    previous = {v: None for v in graph}  # Set all previous nodes to None.

    # Set the distance from the start node to 0.
    distances[start] = 0

    # Initialize the priority queue with the start node.
    unvisited = [(0, start)]  # A list of tuples where each tuple contains distance and node.

    while unvisited:
        # Pop the node with the smallest distance from the priority queue.
        current_distance, current_node = heapq.heappop(unvisited)

        # Once the destination has been reached, the loop can end.
        if current_node == end:
            break

        # Iterate through the neighbors of the current node.
        for neighbor, cost in graph[current_node].items():
            # Calculate the distance through the current node.
            alternative_distance = current_distance + cost

            # Update the distance and previous dictionaries if the new distance is shorter.
            if alternative_distance < distances[neighbor]:
                distances[neighbor] = alternative_distance
                previous[neighbor] = current_node
                heapq.heappush(unvisited, (alternative_distance, neighbor))

    # Reconstruct the shortest path.
    path = []
    current = end

    # Go through any previous nodes and build the path.
    while previous[current] is not None:
        path.insert(0, current)
        current = previous[current]

    # Insert the start node at the beginning of the path.
    path.insert(0, start)

    return path, distances[end]

# Test the function with the given graph, start and end nodes.
shortest_path, cost = dijkstra(graph, 'O', 'T')
print(f"The shortest path is: {shortest_path}")
print(f"The shortest path costs: {cost}")
