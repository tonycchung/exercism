class Hamming

  def self.compute(dna_a, dna_b)
    hamming = 0
    dna_a.each_char do |a|
      dna_b.each_char do |b|
        if a != b && !(b.nil? || a.nil?)
          hamming += 1
        end
        dna_b[dna_b.index(b)] = ""
        break
      end
    end
    hamming
  end

end
