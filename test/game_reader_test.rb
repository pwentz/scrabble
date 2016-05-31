gem 'minitest'
require_relative '../lib/game_reader'
require_relative '../lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameReaderTest < Minitest::Test

  def test_can_save_scores_to_players

    reader = GameReader.new
    player1 = Player.new

    reader.save_score(player1, "hamster")

    assert_equal 12, reader.grab_score(player1)
  end

  def test_can_save_multiple_scores_of_player

    player1 = Player.new
    reader = GameReader.new

    reader.save_score(player1, "hello")
    reader.save_score(player1, "hamster")

    assert_equal 20, reader.grab_score(player1)
  end
end
