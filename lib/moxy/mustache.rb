module Moxy
  class Mustache
    
    def method_missing( method, *args, &blk )
      method.bang? ? "{{{#{method.unbang}}}}" : "{{#{method}}}"
    end
    
  end
end
