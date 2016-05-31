gem 'minitest'
require_relative '../lib/word_list'
require_relative '../lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordListTest < Minitest::Test

  def test_tracks_score_by_player
    player = Player.new
    word_list = WordList.new
    word_list.assemble_score_sheet(player,"hamster")

    assert_instance_of Array, player.score_sheet
    assert_equal "hamster", player.score_sheet.join.split(",").first
    assert_equal "12", player.score_sheet.join.split(",").last
  end

end
