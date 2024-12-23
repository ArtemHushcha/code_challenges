# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'challenge')
require 'test/unit'

class ChallengeTest < Test::Unit::TestCase
  def test_2
    input = [1, 3, 2, 1, 3]

    should_be_result = 2
    actual_result = Challenge.new(input).call
    assert_equal(should_be_result, actual_result)
  end
end
