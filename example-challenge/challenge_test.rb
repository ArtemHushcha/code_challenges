# frozen_string_literal: true

require_relative 'challenge'
require 'test/unit'

# This is a class with test cases
class ChallengeTest < Test::Unit::TestCase
  def test_example
    input = nil
    should_be_result = nil
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end
end
