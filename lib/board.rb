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

  def valid_moves(x, y)
    positions = [[x - 1, y + 2], [x + 1, y + 2],
                 [x + 2, y + 1], [x + 2, y - 1],
                 [x + 1, y - 2], [x - 1, y - 2],
                 [x - 2, y - 1], [x - 2, y + 1]]
    results = []
    positions.filter do |position|
      if position[0].between?(0, board.length - 1) &&
         position[1].between?(0, board.length - 1)
        results << position
      end
    end
    results
  end
end
