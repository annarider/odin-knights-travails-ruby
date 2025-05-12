# frozen_string_literal: true

require_relative '../lib/board'

# Board helps debug the chess board
# in the Knights Travails game.
# 
module TestBoard
  class << self
    attr_accessor :board
  end

  def self.setup
    @board = Board.new
    board.inspect
  end

  def self.valid_moves
    p board.valid_moves(3, 3)
    p board.valid_moves(0, 0)
    p board.valid_moves(2, 4)
    p board.valid_moves(7, 7)  
    p board.valid_moves(5, 4)
  end
end

if __FILE__ == $PROGRAM_NAME
  TestBoard.setup
  TestBoard.valid_moves
end
