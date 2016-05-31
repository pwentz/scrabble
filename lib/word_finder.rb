class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def is_a_word?(word)
    if words.include?(word)
      true
    else
      false
    end
  end

end
