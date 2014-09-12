class Complement

  def self.of_dna(dna)
    keys = %w(G C T A)
    values = %w(C G A U)
    hsh = keys.zip(values).to_h

    dna.split("").each_index do |i|
      dna[i] = hsh[dna[i]]
    end
    dna
  end

  def self.of_rna(rna)
    keys = %w(G C A U)
    values = %w(C G T A)
    hsh = keys.zip(values).to_h

    rna.split("").each_index do |i|
      rna[i] = hsh[rna[i]]
    end
    rna
  end
end
