# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'challenge')
require 'test/unit'

# This is a class with test cases
class ChallengeTest < Test::Unit::TestCase
  def test_single_element
    input = [5]
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_two_elements
    input = [1, 3, 2, 1, 3]
    should_be_result = 2
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_all_elements_equal
    input = [4, 4, 4, 4]
    should_be_result = 4
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_no_elements
    input = []
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_large_input
    input = [1, 2, 3, 4, 5, 5, 5, 5]
    should_be_result = 4
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end
end
