class Array

  def keep
    result = []
    self.each_with_index do |element, i|
      result << element if yield element
    end
    return result
  end

  def discard
    result = self
    self.each_with_index do |element, i|
      result.delete(element) if yield element
    end
    return result
  end

 end
