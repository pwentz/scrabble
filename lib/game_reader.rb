require_relative '../lib/player'
require_relative '../lib/scrabble'

class GameReader
  def initialize
    @player = Player.new
  end

  def fetch_input
    word = @player.input
    retrieve_score(word)
  end

  def retrieve_score(word)
    scrabble = Scrabble.new
    scrabble.score(word)
    save_score(word)
  end

  def save_score(player, word)
    list = WordList.new
    player.score_sheet = list.assemble_score_sheet(word)
  end
end
