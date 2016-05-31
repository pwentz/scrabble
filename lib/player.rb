class Player
  attr_accessor :score_sheet
  attr_reader :word_input
  def initialize
    @score_sheet = Array.new
  end
  def input
    word_input = gets.chomp
  end
end
