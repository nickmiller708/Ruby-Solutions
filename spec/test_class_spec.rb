require_relative '../classes/test_class'
RSpec.describe TestClass do
  describe 'initialization' do 
    let(:tester) {TestClass.new('a', 'b')} 
    it 'should have variables to map to those' do
      expect(tester.p).to eq('a')
      expect(tester.b).to eq('b')
    end
  end 
end 
