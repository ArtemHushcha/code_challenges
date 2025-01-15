# frozen_string_literal: true

# This is a class with challenge's solution
class Challenge
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def call
    chars = @input.chars

    open_brackets_count = chars.count('(')
    close_brackets_count = chars.count(')')

    open_brackets_count == close_brackets_count ? 1 : 0
  end
end
