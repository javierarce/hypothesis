require 'rubygems'
require_relative 'hypothesis/version'
require_relative 'hypothesis/api'

module Hypothesis
  class << self
    attr_accessor :log
    attr_accessor :debug

    # Public: An alias for Hypothesis::API.new
    #
    # Returns a Hypothesis::API object
    def new(options = {})
      Hypothesis::API.new(options)
    end
  end

  self.log = false
  self.debug = false
end
