# odin-knights-travails-ruby
The Odin Project: Knights Travails

Let's plan and outline first before writing code. How does this structure look? 

Board class
- generate 8 x 8 chess board
- generate undirected graph using adjacency matrix (or would a Linked List be better? 
Each node could link to the edges to denote all valid paths from a particular position)
-- each square is a vertex on the graph 
-- tree contains all possible paths from any square on the chess board
--- each edge is a valid move between nodes
- pick a search algorithm to calculate the shortest distance from start to end destination
-- graph algorithm to find the shortest path, maybe Breadth-first Search
https://www.geeksforgeeks.org/shortest-path-algorithms-a-complete-guide/ 

Knight class
- saves current position
- which means it can save previously visited squares
- contains logic for valid moves
-- check the move is 2 steps forward or back and 1 to the side 
-- OR 2 steps to the side and 1 step forward or back
-- the move doesn't fall outside the chess board 

 main.rb
- instantiate new knight object
- instantiate new board object
- controller - gives knight a start and end destination
