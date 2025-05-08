# frozen_string_literal: true

# Board defines a chess board
# in the Knights Travails game.
# 
# It contains the game board
# and manages the rules of
# the game.
#
# @example Create a new Board
# board = Board.new
#
class Board
  attr_accessor :board

  def initialize(squares = 8)
    @board = Array.new(squares) { Array.new(squares)}
  end
end
