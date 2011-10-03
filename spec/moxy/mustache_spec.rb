require 'spec_helper'

describe Moxy::Mustache do
  
  context 'a default mustache moxy' do
    
    before do
      @moxy = Moxy::Mustache.new
    end
    
    it 'should return a mustached string of any property' do
      @moxy.testing.should eq( '{{testing}}' )
    end
    
    it 'should triple-mustache any banged properties' do
      @moxy.testing!.should eq( '{{{testing}}}' )
    end
  end
  
end
