module CrackingTheCode
  module ChapterOne
    class IsUnique 
      attr_accessor :string
      def initialize(string)
        @string = string.downcase
      end 
      def is_unique?
       copy = @string.dup
        copy = copy.chars.sort.join
        copy.each_char.each_cons(2) do |char_one, char_two|
        return false if char_one.eql?(char_two)
        end 
       return true
      end
      def is_unique_hash?
        #implementing this using a Hash
        copy = @string.dup
        copies = Hash.new(0) 
        copy.each_char do |character|
          return false if copies[character].eql?(1)
          copies[character] += 1
        end
        return true 
      end 
    end
  end
end 
