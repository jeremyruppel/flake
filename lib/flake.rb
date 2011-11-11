require "flake/version"

module Flake
  
  autoload :Bang,     'flake/bang'
  autoload :Mustache, 'flake/mustache'
end

require 'flake/core_ext/string'
require 'flake/core_ext/symbol'
