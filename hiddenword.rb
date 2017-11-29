require_relative('game')

class HiddenWord
  def initialize(word)
    @hidden_word = word.downcase!
  end

  def display(guessed_letters)
    hidden_word_array = @hidden_word.split("")
    display_string = ""
    for hidden_letter in hidden_word_array
      display_string += convert_input_to_display(hidden_letter, guessed_letters )
    end
      # if displ
    return display_string
  end

  def convert_input_to_display(letter, guessed_letters)
    if letter == ' '
      return ' '
    elsif guessed_letters.include? letter
       return letter
   else
      return "*"
    end
  end


end
