# frozen_string_literal: true

# This is a class with challenge's solution
class Challenge
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def call
    open_brackets_count, close_brackets_count = 0, 0

    @input.chars.each do |char|
      open_brackets_count += 1 and next if char == '('
      close_brackets_count += 1 and next if char == ')'
    end

    open_brackets_count == close_brackets_count ? 1 : 0
  end
end
