# frozen_string_literal: true

require_relative '../lib/knight'

# Knight helps debug the knight
# piece in Knights Travails.
#
module TestKnight
  class << self
    attr_accessor :knight
  end

  def self.setup(start)
    @knight = Knight.new(start)
    knight.inspect
  end
end

puts TestKnight.setup([3, 3]) if __FILE__ == $PROGRAM_NAME
