require('minitest/autorun')
require('minitest/nyan_cat')

require_relative('../player')
require_relative('../hiddenword')
require_relative('../game')

class TestPlayer < MiniTest::Test
  def setup
    @player_amy = Player.new("Amy")
    @player_ross = Player.new("Ross")
  end

  def test_player_name
    assert_equal("Amy", @player_amy.name)
  end

  def test_player_lives
    assert_equal(6, @player_ross.lives)
  end
end
