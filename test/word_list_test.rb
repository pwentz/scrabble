gem 'minitest'
require_relative '../lib/word_list'
require_relative '../lib/player'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordListTest < Minitest::Test
  def setup
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @scrabble = Scrabble.new
    @word_list = WordList.new
  end

  def test_can_track_one_score
    @word_list.assemble_score_sheet("hamster")

    assert_equal 12, @word_list.score_sheet["hamster"]
  end
end
