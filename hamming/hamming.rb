class Hamming
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError
    end
    hamming_distance = 0
    (0..strand1.length).each do |i|
      if(strand1[i] != strand2[i])
        hamming_distance += 1
      end
    end
    hamming_distance
  end
end
