# frozen_string_literal: true

require_relative 'challenge'
require 'test/unit'

# This is a class with test cases
class ChallengeTest < Test::Unit::TestCase
  def test_extra_close_bracket
    input = '(coder)(byte))'
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_extra_open_bracket
    input = '((coder)(byte)'
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_empty_input
    input = ''
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_without_brackets
    input = 'coderbyte'
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_nested_brackets
    input = '((a(b)c)d)'
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_only_open_brackets
    input = '(((('
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_only_close_brackets
    input = '))))'
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_balanced_with_characters
    input = '(a(b)c)d(e(f)g)'
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_unbalanced_with_characters
    input = '(a(b)c)d(e(f)g'
    should_be_result = 0
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end

  def test_happy_path
    input = '(c(oder)) b(yte)'
    should_be_result = 1
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end
end
