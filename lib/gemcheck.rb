require "bundler"

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.setup # ready!

module Gemcheck
  class Error < StandardError; end
end