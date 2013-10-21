require 'shuffle'
require 'rspec'

describe Shuffle do

  context 'when the Shuffle contains a single string' do
    shuffle = Shuffle.new 'my_string'

    it 'should return the string' do
      shuffle.to_str.should == 'my_string'
    end
  end

  context 'when the Shuffle contains an array of three strings' do
    shuffle = Shuffle.new ['string1', 'string2', 'string3']

    context 'when called the first time' do
      it 'should return the first string' do
        shuffle.to_str.should == 'string1'
      end
    end

    context 'when called the second time' do
      it 'should return the second string' do
        shuffle.to_str.should == 'string2'
      end
    end

    context 'when called the third time' do
      it 'should return the third string' do
        shuffle.to_str.should == 'string3'
      end
    end

    context 'when called the fourth time' do
      it 'should return the first string' do
        shuffle.to_str.should == 'string1'
      end
    end
  end

  context 'when the Shuffle contains an array of three integers' do
    shuffle = Shuffle.new [1, 2, 3]

    context 'when called the first time' do
      it 'should use the first integer' do
        (shuffle + 1).should == 2
      end
    end

    context 'when called the second time' do
      it 'should use the second integer' do
        (shuffle + 1).should == 3
      end
    end

    context 'when called the third time' do
      it 'should use the third integer' do
        (shuffle + 1).should == 4
      end
    end

    context 'when called the fourth time' do
      it 'should use the first integer' do
        (shuffle + 1).should == 2
      end
    end
  end

end