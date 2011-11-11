require 'spec_helper'

describe Moxy::Mustache do
  
  context 'a default mustache moxy' do
    
    before do
      @moxy = Moxy::Mustache.new
    end
    
    it 'should return a mustached string of any property' do
      @moxy.testing.should eq( '{{testing}}' )
      @moxy.whatevs.should eq( '{{whatevs}}' )
    end
    
    it 'should triple-mustache any banged properties' do
      @moxy.testing!.should eq( '{{{testing}}}' )
      @moxy.whatevs!.should eq( '{{{whatevs}}}' )
    end
  end
  
  context 'a mustache proxy with overrides' do
    
    before do
      @moxy = Moxy::Mustache.new :status => 'baller', :drinks => 'beers'
    end
    
    it 'should return the overridden property' do
      @moxy.status.should eq( 'baller' )
      @moxy.drinks.should eq( 'beers' )
    end
  end
  
end
