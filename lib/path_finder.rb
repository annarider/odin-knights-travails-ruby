# frozen_string_literal: true

# Path Finder manages the search
# algorithm for finding the shortest
# path in the Knights Travails game.
# 
# It manages the search algorithm,
# tracks the queue (for BFS),
# tracks the visited squares (to
# avoid reprocessing already visited
# squares), the history of the path,
# and reconstructs the path.
#
# @example Create a new PathFinder
# path = PathFinder.new
#
class PathFinder
  attr_accessor :queue, :visited, :path_history

  def initialize(knight)
    @queue = knight.start_position
    @visited = []
    @path_history = {}
  end
end
