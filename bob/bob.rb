class Bob

  def hey(phrase)
    if phrase.upcase == phrase && phrase.gsub(', ', String.new).match(/\D/)
      'Woah, chill out!'
    elsif phrase.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end

end
