class Say

  def initialize(number)
    @number = number.to_s
    @ones = %w(zero one two three four five six seven eight nine)
    @tens = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
    @thousands = %w(hundred thousand million billion)
  end

  def chunk
    raise 'Number out of range!' if @number.size > 999_999_999_999 || @number.match(/-/)
    @number.reverse.split('').each_slice(3).to_a.map(&:reverse).reverse.map(&:join).map(&:to_i)
  end

end
