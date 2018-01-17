class TestClass
  attr_reader :p, :b
  def initialize(p, b)
    @p = p
    @b = b
  end
  def to_string
    puts "P value: #{p}" 
    puts "B value: #{b}"
  end
end
