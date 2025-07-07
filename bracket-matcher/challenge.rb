# frozen_string_literal: true

# This is a class with challenge's solution
class Challenge
  OPEN_BRACKET_CHAR = '('
  CLOSE_BRACKET_CHAR = ')'

  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def call(method = :default)
    send(method)
  end

  private

  def default
    @input.count(OPEN_BRACKET_CHAR) == @input.count(CLOSE_BRACKET_CHAR) ? 1 : 0
  end

  def optimized
    open_brackets_count = 0
    close_brackets_count = 0

    @input.chars.each do |char|
      open_brackets_count += 1 and next if char == OPEN_BRACKET_CHAR
      close_brackets_count += 1 and next if char == CLOSE_BRACKET_CHAR
    end

    open_brackets_count == close_brackets_count ? 1 : 0
  end
end
