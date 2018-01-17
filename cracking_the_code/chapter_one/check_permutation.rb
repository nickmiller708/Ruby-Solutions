module CrackingTheCode
  module ChapterOne
    class CheckPermutation
      attr_reader :orig
      def initialize(string)
        @orig = string.delete(' ')
      end
      def hashify(string)
        count = Hash.new(0)
        string.each_char do |character|
          count[character] += 1   
        end
        count
      end 
      
      def is_permutation?(string)
        hashify(@orig).eql?(hashify(string.delete(' ')))
      end
    
      def generate_permutation
        string_count = hashify(@orig)
        chars = "" 
        until string_count.values.sum.zero? 
          char = string_count.keys.sample.to_s
          next if string_count[char].zero?
          chars+= char
          string_count[char] -= 1
        end
        chars 
      end  
    end
  end
end 
