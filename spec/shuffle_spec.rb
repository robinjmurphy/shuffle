require 'shuffle'
require 'rspec'

describe Shuffle do

  describe '.to_s' do
    context 'when the Shuffle contains a single string' do
      shuffle = Shuffle.new 'my_string'

      it 'should return the string' do
        shuffle.to_s.should == 'my_string'
      end
    end

    context 'when the Shuffle contains three strings' do
      shuffle = Shuffle.new ['string1', 'string2', 'string3']

      context 'when called the first time' do
        it 'should return the first string' do
          shuffle.to_s.should == 'string1'
        end
      end

      context 'when called the second time' do
        it 'should return the second string' do
          shuffle.to_s.should == 'string2'
        end
      end

      context 'when called the third time' do
        it 'should return the third string' do
          shuffle.to_s.should == 'string3'
        end
      end

      context 'when called the fourth time' do
        it 'should return the first string' do
          shuffle.to_s.should == 'string1'
        end
      end
    end
  end

end