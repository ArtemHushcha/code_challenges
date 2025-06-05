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
    open_brackets_count = 0
    close_brackets_count = 0

    @input.chars.each do |char|
      open_brackets_count += 1 and next if char == OPEN_BRACKET_CHAR
      close_brackets_count += 1 and next if char == CLOSE_BRACKET_CHAR
    end

    open_brackets_count == close_brackets_count ? 1 : 0
  end
end
