require_relative '../lib/word_list'
# require_relative '../lib/scrabble'


class GameReader
  def fetch_input
    word = player.input
    retrieve_score(word)
  end
  
  def save_score(player, word)
    list = WordList.new
    list.assemble_score_sheet(player, word)
  end

  def grab_score(player)
    agg_scores = Array.new
    player.score_sheet.each do |score|
      agg_scores << score.split(",").last
    end
    final_score(agg_scores)
  end

  def final_score(agg_scores)
    agg_scores.reduce(0) do |agg,score|
      agg + score.to_i
    end
  end
end
