class Robot < NameTracker
  attr_reader :name

  def initialize
    @name = new_name
    @@names[@name] = true
  end

  def new_name
    letters = ('A'..'Z').to_a[rand(26)] + ('A'..'Z').to_a[rand(26)]
    numbers = %w(10 10 10).map { |x| rand(x.to_i) }.join("")
    @name = "#{letters}#{numbers}"
  end

  def reset
    new_name
  end
end
