# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'challenge')
require 'test/unit'

# This is a class with test cases
class ChallengeTest < Test::Unit::TestCase
  def test_no_ages
    input = 'key=abc, key=def'
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_all_ages_below_limit
    input = 'key=abc, age=20, key=def, age=49, key=ghi, age=30'
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_all_ages_at_or_above_limit
    input = 'key=abc, age=50, key=def, age=51, key=ghi, age=99'
    should_be_result = 3
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_mixed_valid_and_invalid_entries
    input = 'key=abc, age=51, key=def, age=notanumber, key=ghi, age=49'
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_empty_string
    input = ''
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_spaces_and_irregular_formatting
    input = ' key=abc, age=51 , key=def, age=49 '
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_single_entry_above_limit
    input = 'key=abc, age=99'
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_single_entry_below_limit
    input = 'key=abc, age=10'
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_happy_path4
    input = 'key=IAfpK, age=58, key=WNVdi, age=64, key=jp9zt, age=47, key=0Sr4C, age=68, key=CGEqo, age=76'
    should_be_result = 4
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end
end
