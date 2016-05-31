require_relative '../lib/player'
require_relative '../lib/scrabble'
require 'pry'

class WordList
  attr_accessor :score_sheet
  def initialize
    @score_sheet = Hash.new
  end

  def assemble_score_sheet(player, word)
    scrabble = Scrabble.new
    @score_sheet[word] = scrabble.score(word)
    keep_track(player)
  end

  def keep_track(player)
    @score_sheet.each do |key, value|
      player.score_sheet << "#{key},#{value}"
    end
  end
end
