require_relative '../lib/player'
require 'pry'

class WordList
  attr_reader :score_sheet
  def initialize
    @score_sheet = Hash.new
  end

  def assemble_score_sheet(word)
    scrabble = Scrabble.new
    @score_sheet[word] = scrabble.score(word)
  end

end
