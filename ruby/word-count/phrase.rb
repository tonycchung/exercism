class Phrase

  def initialize(phrase)
    @phrase = phrase.scan(/(\w+'?\w*)/).flatten.map(&:downcase)
  end

  def word_count
    @phrase.each_with_object({}) do |word, hsh|
      hsh[word] = @phrase.count(word) unless hsh[word]
    end
  end

end
