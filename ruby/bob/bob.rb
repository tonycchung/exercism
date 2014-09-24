class Bob
  def hey(msg)
    if yelling?(msg)
      return 'Woah, chill out!'
    elsif question?(msg)
      return 'Sure.'
    elsif silent?(msg)
      return 'Fine. Be that way!'
    else
      return'Whatever.'
    end
  end

  private

  def yelling?(msg)
    msg.scan(/[a-zA-Z]+/) == msg.scan(/[A-Z]+/) && !msg.scan(/[A-Z]+/).empty?
  end

  def question?(msg)
    msg[-1] == '?'
  end

  def silent?(msg)
    msg.split.empty?
  end
end
