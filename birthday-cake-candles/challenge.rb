# frozen_string_literal: true

# This is a class with challenge's solution
class Challenge
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def call
    return 0 if @input.empty?

    @input.each_with_object(height: 0, counter: 0) do |height, acc|
      if height > acc[:height]
        acc[:height] = height
        acc[:counter] = 1
      elsif height == acc[:height]
        acc[:counter] += 1
      end
    end[:counter]
  end
end
