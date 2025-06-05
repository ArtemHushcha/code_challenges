# frozen_string_literal: true

require 'json'
require 'net/http'
require 'uri'

# This is a class with challenge's solution
class Challenge
  AGE_DATA_URL = 'https://coderbyte.com/api/challenges/json/age-counting'
  AGE_LIMIT = 50

  attr_accessor :input

  def initialize(input)
    @input = input || _default_input
  end

  def call
    _keys.inject(0) do |count, key|
      count += 1 if _age(key) >= AGE_LIMIT
      count
    end
  end

  private

  def _default_input
    URI.parse(AGE_DATA_URL)
       .then { |uri| Net::HTTP.get(uri) }
       .then { |response| JSON.parse(response) }
       .then { |result| result['data'] }
  end

  def _keys
    @input.split(', key=')
  end

  def _age(key)
    key.split(', age=').last.to_i
  end
end
