module BookKeeping
  VERSION = 4
end

module Pangram
  def pangram?(sentence)
    # Create a hash of characters and number of occurences
    sentence_hash = sentence.delete(" ").split("").each_with_object(Hash.new(0)){ |char, obj| obj[char.downcase] += 1}

    pangram = ("a".."z").select {|char| sentence_hash[char] < 1 }.count == 0 
  end
end

Pangram.extend(Pangram)

require 'benchmark'

Benchmark.bm do |bm|
  bm.report do 
    100000.times do
    sentence_hash = "A quick brown lazy fox jumped over the fence".delete(" ").split("").each_with_object(Hash.new(0)){ |char, obj| obj[char.downcase] += 1}

    pangram = ("a".."z").select {|char| sentence_hash[char] < 1 }.count == 0 
      
    end
  end
end

require 'benchmark'

Benchmark.bm do |bm|
  bm.report do 
    100000.times do
      alphabet = ("a".."z").to_a
      alphabet -= "A quick brown lazy fox jumped over the fencesentence".downcase.chars
      alphabet.empty?   

    end
  end
end
