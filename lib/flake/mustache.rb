module Flake
  class Mustache

    def initialize( options={} )
      @options = options
    end

    def method_missing( method, *args, &blk )
      @options.has_key?( method ) ? @options[ method ] : template_for( method )
    end

    protected

    def template_for( method )
      method.bang? ? "{{{#{method.unbang}}}}" : "{{#{method}}}"
    end
  end
end
