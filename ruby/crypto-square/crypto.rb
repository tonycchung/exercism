class Crypto

  def initialize(text)
    @text = text.scan(/\w+/).map(&:downcase).join
  end

  def normalize_plaintext
    @text
  end

  def size
    Math.sqrt(@text.size).ceil
  end

  def plaintext_segments
    @text.scan(/\w{#{size}}/)
  end

end
