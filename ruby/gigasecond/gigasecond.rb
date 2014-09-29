class Gigasecond
  require 'date'
  require 'time'

  def self.from(date)
    (date.to_time + 10**9).to_date
  end

end
