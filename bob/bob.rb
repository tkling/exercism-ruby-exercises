class Bob

  def hey(phrase)
    if phrase.end_with?('!')
      'Woah, chill out!'
    elsif phrase.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end

end
