class Clock

  def self.at(hour, minute = 0)
    hours = hour.divmod(10)
    minutes = minute.divmod(60)
    return [hours, ':', minutes].flatten
  end

end
