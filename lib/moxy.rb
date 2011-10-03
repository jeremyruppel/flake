require "moxy/version"

module Moxy
  
  autoload :Bang,     'moxy/bang'
  autoload :Mustache, 'moxy/mustache'
end

require 'moxy/core_ext/string'
require 'moxy/core_ext/symbol'
