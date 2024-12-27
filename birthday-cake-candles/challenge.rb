# frozen_string_literal: true

# This is a class with challenge's solution
class Challenge
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def call
    return 0 if @input.empty?
    return 1 if @input.size == 1

    max = @input.shift
    counter = 1
    @input.each do |item|
      next if item < max
      counter += 1 and next if item == max

      max = item
      counter = 1
    end
    counter
  end
end
