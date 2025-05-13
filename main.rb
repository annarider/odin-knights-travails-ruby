# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/knight'
require_relative 'lib/path_finder'

# main contains the main execution
# for running my Knights Travails
# project.
#


def knight_moves(start, destination)
  board = Board.new(8)
  path_finder = PathFinder.new
  path = path_finder.find_path(board, start, destination)
  puts "You made it in #{path.length - 1} moves! Here's your path:"
  path.each { |position| p position }
end

knight_moves([0,0],[1,2]) # answer: [[0,0],[1,2]]
knight_moves([0,0],[3,3]) # answer: [[0,0],[1,2]]
knight_moves([3,3],[0,0]) # answer: [[0,0],[1,2]]
knight_moves([0,0],[7,7]) # answer: [[0,0],[1,2]]
