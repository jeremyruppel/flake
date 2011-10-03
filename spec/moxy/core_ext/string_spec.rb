require 'spec_helper'

describe String do

  describe '#bang?' do
    
    it 'should respond to bang?' do
      ''.should respond_to( :bang? )
    end
    
    it 'should be true if banged' do
      'sup!'.bang?.should be_true
    end
    
    it 'should be false if not banged' do
      'sup?'.bang?.should be_false
    end
  end
  
  describe '#unbang' do
    
    it 'should respond to unbang' do
      ''.should respond_to( :unbang )
    end
    
    it 'should remove the bang from the end of a string' do
      'sup!'.unbang.should eq( 'sup' )
    end
    
    it 'should not modify a string without a bang' do
      'sup?'.unbang.should eq( 'sup?' )
    end
  end
end
