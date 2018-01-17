require_relative '../../../cracking_the_code/chapter_one/is_unique'
RSpec.describe CrackingTheCode::ChapterOne::IsUnique do
  describe 'using is_uniq sort' do
  describe 'not unique case' do
    let(:unique) {CrackingTheCode::ChapterOne::IsUnique.new('hihi') }
    it 'should not be true! IT is false' do 
      expect(unique.is_unique?).to be_falsy
    end
    it 'should expect not true when there are capital and lowercase' do 
      unique = CrackingTheCode::ChapterOne::IsUnique.new('Hihi')
      expect(unique.is_unique?).to be_falsy
    end 
  end
  describe 'is unique cases' do 
    it 'should expect this to be true' do 
       unique = CrackingTheCode::ChapterOne::IsUnique.new('asdfghjkl') 
      expect(unique.is_unique?).to be_truthy
    end 
  end 
 
  end 
  describe 'using is_uniq hash function' do 
  describe 'not unique case' do
    let(:unique) {CrackingTheCode::ChapterOne::IsUnique.new('hihi') }
    it 'should not be true! IT is false' do 
      expect(unique.is_unique_hash?).to be_falsy
    end
    it 'should expect not true when there are capital and lowercase' do 
      unique = CrackingTheCode::ChapterOne::IsUnique.new('Hihi')
      expect(unique.is_unique_hash?).to be_falsy
    end 
  end
  describe 'is unique cases' do 
    it 'should expect this to be true' do 
       unique = CrackingTheCode::ChapterOne::IsUnique.new('asdfghjkl') 
      expect(unique.is_unique_hash?).to be_truthy
    end 
  end 
  end
end 
