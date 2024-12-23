# frozen_string_literal: true

class Challenge
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def call
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