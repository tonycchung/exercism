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
    @text.scan(/\w{1,#{size}}/)
  end

  def ciphertext
    result = []
    plaintext_segments.size.times { |x| result << '' }
    plaintext_segments.each do |segment|
      segment.split('').each_with_index do |char, i|
        result[i] << char
      end
    end
    result.join
  end

  def normalize_ciphertext

  end

end
