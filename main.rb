# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/knight'
require_relative 'lib/path_finder'

# main contains the main execution
# for running my Knights Travails
# project.
#

board = Board.new(8)
knight = Knight.new
path_finder = PathFinder.new
