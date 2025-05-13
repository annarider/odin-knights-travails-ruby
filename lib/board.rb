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
    @board = Array.new(squares) { Array.new(squares) }
  end

  def valid_moves(row, column)
    positions = knight_moves(row, column)
    results = []
    positions.filter do |position|
      if position[0].between?(0, board.length - 1) &&
         position[1].between?(0, board.length - 1)
        results << position
      end
    end
    results
  end

  private

  def knight_moves(row, column)
    [[row - 1, column + 2], [row + 1, column + 2],
     [row + 2, column + 1], [row + 2, column - 1],
     [row + 1, column - 2], [row - 1, column - 2],
     [row - 2, column - 1], [row - 2, column + 1]]
  end
end
