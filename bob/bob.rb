class Bob
  attr_reader :phrase

  def hey(input_phrase)
    @phrase = input_phrase
    if question? && (only_numbers? || !uppercase?)
      'Sure.'
    elsif uppercase? && non_digits?
      'Woah, chill out!'
    else
      'Whatever.'
    end
  end

  private

  def question?
    phrase.end_with?('?')
  end

  def uppercase?
    phrase.upcase == phrase
  end

  def non_digits?
    phrase_without_comma_spaces.match(/\D/)
  end

  def only_numbers?
    phrase_without_comma_spaces.match(/\d/)
  end

  def phrase_without_comma_spaces
    phrase.gsub(', ', String.new)
  end

end
