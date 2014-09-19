class Phrase

  def initialize(phrase)
    @phrase = phrase.scan(/(\w+'?\w*)/).flatten.map(&:downcase)
    @hsh = {}
  end

  def word_count
    @phrase.inject({}) do |hsh, word|
      hsh[word] = @phrase.count(word) unless hsh[word]
      hsh
    end
  end

end
