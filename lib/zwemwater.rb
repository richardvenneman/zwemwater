require 'zwemwater/version'
require 'zwemwater/base'
require 'zwemwater/service'

module Zwemwater
  @@statusses = nil
  def self.statusses; @@statusses; end;
  def self.statusses=(value); @@statusses = value; end;
  
  def self.new(query)
    Zwemwater::Base.new(query)
  end
end