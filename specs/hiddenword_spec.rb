require('minitest/autorun')
# require('minitest/nyan_cat')

require_relative('../player')
require_relative('../hiddenword')
require_relative('../game')

class TestHiddenWord < MiniTest::Test

  def setup
    @hidden_word_nyan_sushi_party = HiddenWord.new("Nyan Sushi Party")

  end

  def test_hidden_word_has_stars_in_the_right_name_at_the_beginning
    correctly_guessed = @hidden_word_nyan_sushi_party.display([])
    assert_equal("**** ***** *****", correctly_guessed)
    # but will only display letters which have
    #  been correctly guessed, replacing the rest with the * character
  end

  def test_hidden_word_has_stars
    correctly_guessed = @hidden_word_nyan_sushi_party.display(['a'])
    assert_equal("**a* ***** *a***", correctly_guessed)
    # but will only display letters which have
    #  been correctly guessed, replacing the rest with the * character
  end

  def test_hidden_word_has_stars
    guessed_letters = ['n', 'y', 'a', 'p', 'r', 't', 'y', 's', 'u', 'h', 'i']
    correctly_guessed = @hidden_word_nyan_sushi_party.display(guessed_letters)
    assert_equal("nyan sushi party", correctly_guessed)
    # but will only display letters which have
    #  been correctly guessed, replacing the rest with the * character
  end



end
