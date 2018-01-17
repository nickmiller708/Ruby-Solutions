require_relative '../../../cracking_the_code/chapter_one/check_permutation'
RSpec.describe CrackingTheCode::ChapterOne::CheckPermutation do
  describe 'false examples' do
    let (:original) {'i am chaces boy'}
    let (:example) {CrackingTheCode::ChapterOne::CheckPermutation.new(original)}
    it' should be be false' do 
      expect(example.is_permutation?('who would wanna be chaces boy')).to be_falsy
    end 
  end
  describe 'this is a good example' do 
    let (:original) {'i am chaces boy'}
    let (:example) {CrackingTheCode::ChapterOne::CheckPermutation.new(original)}
    it 'should be able to generate permutations' do 
      permutation = example.generate_permutation
      expect(example.is_permutation?(permutation)).to be_truthy
    end 
  end 
end 
