# frozen_string_literal: true

# This is a class with challenge's solution
class Challenge
  OPEN_BRACKET_CHAR = '('
  CLOSE_BRACKET_CHAR = ')'

  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def call
    @input.count(OPEN_BRACKET_CHAR) == @input.count(CLOSE_BRACKET_CHAR) ? 1 : 0
  end
end
