require_relative '../lib/word_finder'
require_relative '../lib/player'
require_relative '../lib/game_reader'
require 'pry'

class Scrabble
  def play(word)
    reader = GameReader.new
    player = Player.new
    reader.save_score(player, word)
    puts reader.grab_score(player)
  end

  def score(word)
    if word == nil || word.empty?
      0
    elsif word.length < 2
      point_values[word.upcase]
    else
      word_confirmation(word)
    end
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

  def word_confirmation(word)
    finder = WordFinder.new
    if finder.is_a_word?(word)
      tally(word)
    else
      score(nil)
    end
  end

  def tally(word)
    word.chars.reduce(0) do |score, letter|
      score + point_values[letter.upcase]
    end
  end
end
