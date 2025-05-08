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
end

if __FILE__ == $PROGRAM_NAME
  puts TestBoard.setup
end
