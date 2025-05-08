# frozen_string_literal: true

require_relative '../lib/path_finder'

# Test script helps debug the
# path finder class 
# in Knights Travails.
# 
module TestPathFinder
  class << self
    attr_accessor :path_finder
  end

  def self.setup
    @path_finder = PathFinder.new(start, destination)
  end
end

if __FILE__ == $PROGRAM_NAME
  puts TestPathFinder.setup
end
