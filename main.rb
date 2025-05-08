# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/knight'
require_relative 'lib/path_finder'

# main contains the main execution
# for running my Knights Travails
# project.
#


def knight_moves(start, end)
  board = Board.new(8)
  knight = Knight.new(start)
  path_finder = PathFinder.new(board)
  # puts path_finder.shortest_path(end)
end

knight_moves([0,0],[1,2]) # answer: [[0,0],[1,2]]
