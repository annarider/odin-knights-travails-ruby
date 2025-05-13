# frozen_string_literal: true

# Knight defines a knight piece
# in the Knights Travails game.
#
# It tracks the knight's current
# position.
#
# @example Create a new Knight
# knight = Knight.new
#
class Knight
  attr_accessor :position

  def initialize(start_position = [0, 0])
    @position = start_position
  end
end
