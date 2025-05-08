# odin-knights-travails-ruby
The Odin Project: Knights Travails

Let's plan and outline first before writing code. How does this structure look? 

Board class: Controls board and game rules
- generate 8 x 8 chess board
-- 2-D array with rows & columns
- contains logic for valid moves
-- check the move is 2 steps forward or back and 1 to the side 
-- OR 2 steps to the side and 1 step forward or back
-- the move doesn't fall outside the chess board 

Knight class
- tracks its current position - variable

PathFinder class
- pick a search algorithm to calculate the shortest distance from start to end destination
- use Breadth-first Search
https://www.geeksforgeeks.org/shortest-path-algorithms-a-complete-guide/ 
--- queue array (FIFO)
- saves previously visited squares - array
-- avoid recalculating previous moves but also needed to 
recreate path 
- find the shortest path
- maintains parent dictionary to trace path history 
- reconstruct the path

 main.rb
- instantiate new knight object
- instantiate new board object
- instantiate new path finder object
- controller - gives knight a start and end destination
- displays the shortest path

tests
- test set up, including create knight object and board
- test pathfinder
