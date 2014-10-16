class Meetup
  require 'date'

  WEEKDAYS = %w(monday, tuesday, wednesday, thursday, friday).map(&:to_sym)
  TEENTHS = [13, 14, 15, 16, 17, 18, 19]
  WEEKS = %w(first second third fourth).map(&:to_sym)

  def initialize(month, year)
    @month = month
    @year = year
    @date = Date.new(1, 1, 1)
  end

  def day(weekday, schedule)
    if schedule == :teenth
      TEENTHS.each do |day|
        @date = Date.new(@year, @month, day)
        break if @date.send("#{weekday.to_s}?")
      end
    else
      case schedule
      when :first
        (1..7).each do |num|
          @date = Date.new(@year, @month, num)
          break if @date.send("#{weekday.to_s}?")
        end
      when :second
        (8..14).each do |num|
          @date = Date.new(@year, @month, num)
          break if @date.send("#{weekday.to_s}?")
        end
      when :third
        (15..21).each do |num|
          @date = Date.new(@year, @month, num)
          break if @date.send("#{weekday.to_s}?")
        end
      when :fourth
        (22..29).each do |num|
          @date = Date.new(@year, @month, num)
          break if @date.send("#{weekday.to_s}?")
        end
      when :last
        (25..31).each do |num|
          @date = Date.new(@year, @month, num)
          break if @date.send("#{weekday.to_s}?")
        end
      end
    end
    return @date
  end

end

#weekday = mony-fri
#schedule = first, second, third, fourth, last, teenth
