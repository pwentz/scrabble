gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter

    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_multiple_letters
    scrabble = Scrabble.new

    assert_equal 8, scrabble.score("hello")
    assert_equal 12, scrabble.score("hamster")
  end

  def test_it_can_recognize_empty_words
    scrabble = Scrabble.new

    assert_equal 0, scrabble.score("")
    assert_equal 0, scrabble.score(nil)
  end

  def test_it_can_recognize_words_that_dont_exist
    scrabble = Scrabble.new

    assert_equal 0, scrabble.score("kjnskjdsandk")
    assert_equal 0, scrabble.score("lsamdlas")

  end
end
