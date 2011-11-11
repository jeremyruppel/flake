module Flake
  module Bang
    
    def bang?
      self.to_s[ -1, 1 ] == '!'
    end
    
    def unbang
      self.is_a?( String ) ? self.unbanged : self.unbanged.to_sym
    end
    
    protected

    def unbanged
      self.to_s.sub /!$/, ''
    end
  end
end
