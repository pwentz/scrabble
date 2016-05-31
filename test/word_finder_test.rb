gem 'minitest'
require_relative '../lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test
  def test_can_determine_if_word_is_word
    finder = WordFinder.new

    assert finder.is_a_word?("banana")
    refute finder.is_a_word?("admkasdkas")
  end
end
