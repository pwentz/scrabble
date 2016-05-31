gem 'minitest'
require_relative '../lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test
  def test_can_take_input
    player = Player.new
    input = File.read("input.csv").first.chomp

    
  end
end
