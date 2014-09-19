class Phrase

  def initialize(phrase)
    @phrase = phrase.scan(/(\w+'?\w*)/).flatten.map(&:downcase)
    @hsh = {}
  end

  def word_count
    @phrase.each do |word|
      unless @hsh[word]
        @hsh[word] = @phrase.count(word)
      end
    end
    @hsh
  end

end
