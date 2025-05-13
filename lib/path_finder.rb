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
  attr_accessor :visited, :path_history

  def initialize
    @queue = []
    @visited = []
    @path_history = {}
  end

  def find_path(board, start, destination)
    return nil if start == destination

    queue = [start]
    path_history[start] = nil

    until queue.empty?
      current = queue.shift
      return retrace_path(destination) if current == destination

      @visited << current
      queue.concat(add_moves(board, current))
      # TODO: new method that filters out already visited valid moves
      # also need logic where if the valid moves returned contains the
      # destination, let's go there first?

    end
    retrace_path(destination)
  end

  private

  def retrace_path(destination)
    current = destination
    result = [destination]
    until path_history[current].nil?
      result.unshift(path_history[current])
      current = result[0]
    end
    result
  end

  def add_moves(board, position)
    row, column = position
    valid_moves = []
    board.valid_moves(row, column).each do |move| 
      valid_moves << move unless visited.include?(move)
    end
    valid_moves.each { |move| path_history[move] = position }
    valid_moves
  end
end
