gem 'minitest'
require_relative '../lib/game_reader'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameReaderTest < Minitest::Test
  def test_can_retrieve_word_scores
    skip
    reader = GameReader.new(player1)

    #test_input = hello
    assert_equal 8, reader.retrieve_score("hello")
  end

  def test_can_save_scores_to_players
    reader = GameReader.new(player1)

    reader.save_score(player1, "hamster")

    assert_equal "12", player1.score_sheet.values
    assert_equal "hamster", player1.score_sheet.keys
  end

  def test_can_save_multiple_scores_of_player
    skip
    reader = GameReader.new(player1)

    reader.save_score(player1, "hello")
    reader.save_score(player1, "hamster")

    assert_equal "hamster", player1.score_sheet.keys
  end
end
