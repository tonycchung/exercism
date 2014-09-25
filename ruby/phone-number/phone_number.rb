class PhoneNumber

  def initialize(number)
    @number = number
  end

  def number

    result = @number.scan(/\d+/).join
    result.size == 10 ? result : @number.scan(/\w/).map {|x| x = 0}.join
    # return @number.split("").map { |x| x = 0 }.join if @number.size < 10 || @number.size > 11

    # if @number.size >= 10
    #   @number.slice! 0 if @number.size == 11 && @number[0] == 1
    # end
    # @number
  end

end
