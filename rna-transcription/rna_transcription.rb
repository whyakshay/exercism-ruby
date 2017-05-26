module BookKeeping
  VERSION = 5
end

module Complement
  def self.of_dna(strand)
    return '' if /[^GCTA]/.match(strand) 
    arr_strand = strand.split("")
    result = []
    arr_strand.map {|elem| result << complement(elem)}
    result.join("")
  end

  def self.complement(strand)
    case strand
    when 'G'
      'C'
    when 'C'
      'G'
    when 'T'
      'A'
    when 'A'
      'U'
   end
  end
end