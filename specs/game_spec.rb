require('minitest/autorun')
# require('minitest/nyan_cat')

require_relative('../player')
require_relative('../hiddenword')
require_relative('../game')

class TestGame < MiniTest::Test

  def setup
    @nyan = Player.new("Nyan")
    @hidden_word = "sushi dance party"
    @game = Game.new(@nyan, @hidden_word )
  end

  def test_game_has_player
    assert_equal(@nyan, @game.player)
  end

  def test_game_has_hidden_words
    assert_equal(@hidden_word, @game.hidden_word)
  end

  def test_game_has_guessed_letters
    assert_equal([], @game.guessed_letters)
  end

  def test_correct_letter_check
    assert_equal(true, @game.correct_guess('a'))
  end

  def test_correct_letter_check_incorrect
    assert_equal(false, @game.correct_guess('b'))
  end

  def test_pass_letter_to_game_true
    actual = @game.guess('a')
    assert_equal(true, actual)
  end

  def test_pass_letter_to_game_false
    actual = @game.guess('b')
    assert_equal(false, actual)
  end

  def test_guess_adds_to_guessed_letters
    @game.guess('b')
    assert_equal(1, @game.guessed_letters.length)
  end

  def test_subtract_life
    @game.guess('b')
    assert_equal(5,@nyan.lives)
  end

def test_game_end
  assert_equal(true, @game.game_end)
end

def test_check_hidden_word
  @game.guess('n')
  @game.guess('y')
  @game.guess('a')
  @game.guess('s')
  @game.guess('u')
  @game.guess('h')
  @game.guess('i')
  @game.guess('p')
  @game.guess('r')
  @game.guess('t')
  @game.guess('d')
  @game.guess('e')
  @game.guess('c')
  assert_equal(true, @game.check_hidden_word)
end
  # def test_game_won
  #   @game.guess('n')
  #   @game.guess('y')
  #   @game.guess('a')
  #   @game.guess('s')
  #   @game.guess('u')
  #   @game.guess('h')
  #   @game.guess('i')
  #   @game.guess('p')
  #   @game.guess('r')
  #   @game.guess('t')
  #   assert_equal(true, @game.is_won?)
  # end
#   The Game should be able to pass a single letter to a HiddenWord as a guess
# It should store these single letters in its guessed_letters array
# It should be able to subtract a life from a Player if the guess is incorrect
# It should be able to tell whether the game is_won? or is_lost?
end
