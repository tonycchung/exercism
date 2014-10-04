class Nucleotide

  def initialize(strand)
    @strand = strand
  end

  def self.from_dna(strand)
    new(strand)
  end

  def count(nucleotide)
    @strand.split('').inject(0) do |total, letter|
      total += 1 if letter == nucleotide
      total
    end
  end

  def histogram
    %w(A T C G).zip()

end
