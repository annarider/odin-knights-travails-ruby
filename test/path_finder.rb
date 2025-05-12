# frozen_string_literal: true

require_relative '../lib/path_finder'
require_relative '../lib/board'
require_relative '../lib/knight'

# Test script helps debug the
# path finder class 
# in Knights Travails.
# 
module TestPathFinder
  class << self
    attr_accessor :board, :path_finder, :start, :destination
  end

  def self.setup
    @board = Board.new(8)
    @start = [0, 0]
    @destination = [3, 3]
    p @path_finder = PathFinder.new
  end

  def self.path
    path_finder.find_path(board, start, destination)
  end
end

if __FILE__ == $PROGRAM_NAME
  TestPathFinder.setup
  p TestPathFinder.path
end
