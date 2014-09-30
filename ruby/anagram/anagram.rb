class Anagram
  def initialize(word)
    @word = word.split('').map(&:downcase)
  end

  def match(list)
    result = []
    list.each do |word|
      next if word.split('') == @word
      result << word if word.split('').map(&:downcase).sort == @word.sort
    end
    result
  end
end
