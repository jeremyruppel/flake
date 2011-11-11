require 'spec_helper'

describe Flake::Mustache do
  
  context 'a default mustache flake' do
    
    before do
      @flake = Flake::Mustache.new
    end
    
    it 'should return a mustached string of any property' do
      @flake.testing.should eq( '{{testing}}' )
      @flake.whatevs.should eq( '{{whatevs}}' )
    end
    
    it 'should triple-mustache any banged properties' do
      @flake.testing!.should eq( '{{{testing}}}' )
      @flake.whatevs!.should eq( '{{{whatevs}}}' )
    end
  end
  
  context 'a mustache proxy with overrides' do
    
    before do
      @flake = Flake::Mustache.new :status => 'baller', :drinks => 'beers'
    end
    
    it 'should return the overridden property' do
      @flake.status.should eq( 'baller' )
      @flake.drinks.should eq( 'beers' )
    end
  end
  
end
