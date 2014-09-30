class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(node)
    if node > @data && @left.nil?
      @left = node
    elsif node < @data && @right.nil?
      @right = node
    else
      raise 'Value already exists in tree'
    end
  end

  def self.data
    self
  end
end
