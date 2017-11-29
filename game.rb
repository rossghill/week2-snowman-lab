class Game

  attr_reader :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end

  def correct_guess(letter)
    # if @hidden_word is an instance of the HiddenWord class, then .include? won't work
    return @hidden_word.include? letter
  end

  def guess(letter)
    @guessed_letters << letter
    if correct_guess(letter)
      return true
    else
      @player.lives -= 1
      return false
    end
  end

  def game_end()
    if @player.lives == 0
      return false
    else
      return true
    end
  end

  def check_hidden_word
    p @hidden_word.display(@guessed_letters)
    p @guessed_letters
    return @hidden_word == @hidden_word.display(@guessed_letters)

  end
end
