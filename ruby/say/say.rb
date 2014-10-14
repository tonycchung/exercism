class Say

  def initialize(number)
    @number = number.to_s
    @ones = %w(0 1 2 3 4 5 6 7 8 9).map(&:to_i).zip(%w(zero one two three four five six seven eight nine)).to_h
    @teens = %w(10 11 12 13 14 15 16 17 18 19).map(&:to_i).zip(%w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)).to_h
    @tens = %w(20 30 40 50 60 70 80 90 100).map(&:to_i).zip(%w(twenty thirty forty fifty sixty seventy eighty ninety hundred)).to_h
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
      thousandth_index = @chunk.size - 2 - i
      result += "#{number} #{@thousands[thousandth_index] if @chunk.size > i + 1} "
    end
    result.strip
  end

  def in_english
    half = half_english.split(' ')
    half.each_with_index do |num, i|
      key = num.to_i
      result = ''
      if key.between?(0,9)
        result += @ones[key]
      elsif key.between?(10, 19)
        result += @teens[key]
      elsif key.between?(11, 20)
        result += @tens[key]
      end
      half[i] = result
    end
    half.join(' ')
  end

end
