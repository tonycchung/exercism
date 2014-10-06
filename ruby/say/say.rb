class Say

  def initialize(number)
    @number = number.to_s
    @ones = %w(0 1 2 3 4 5 6 7 8 9).map(&:to_i).zip(%w(zero one two three four five six seven eight nine)).to_h
    @tens = %w(0 1 2 3 4 5 6 7 8 9).map(&:to_i).zip%w(ten twenty thirty forty fifty sixty seventy eighty ninety)).to_h
    @thousands = %w(thousand million billion)
  end

  def chunk
    raise 'Number out of range!' if @number.size > 999_999_999_999 || @number.to_i < 0
    @number.reverse.split('').each_slice(3).to_a.map(&:reverse).reverse.map(&:join).map(&:to_i)
    # ['1', '234', '567']
  end

  def half_english
    result = ''
    @chunk = chunk
    @chunk.each_with_index do |number, i|
      result += "#{number} #{@thousands[@chunk.size - 1 - i]} "
    end
    result.chop
  end

end
