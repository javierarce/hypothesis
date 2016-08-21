require 'rubygems'
require_relative 'hypothesis/version'
require_relative 'hypothesis/api'

module Hypothesis
  class << self
    attr_accessor :log
    attr_accessor :debug
  end

  self.log = false
  self.debug = false
end
