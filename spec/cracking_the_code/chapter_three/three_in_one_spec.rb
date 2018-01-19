require_relative '../../../cracking_the_code/chapter_three/three_in_one'
RSpec.describe CrackingTheCode::ChapterThree::ThreeInOne do
  describe 'initial state' do
    let(:example) {CrackingTheCode::ChapterThree::ThreeInOne.new}
    it 'should initialze all the stacks to zero' do
      (0 ... example.stack_number).each do |number|
       expect(example.is_empty?(number)).to be_truthy
      end

    end
    it 'should have all the stacks not full' do 
      (0 ... example.stack_number).each do |number|
       expect(example.is_full?(number)).to be_falsy
      end
    end 
  end 
end
