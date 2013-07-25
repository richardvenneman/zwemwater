require 'zwemwater/version'
require 'zwemwater/base'
require 'zwemwater/service'

module Zwemwater
  @@statuses = nil
  def self.statuses; @@statuses; end;
  def self.statuses=(value); @@statuses = value; end;
  
  def self.new(query)
    Zwemwater::Service.get_statuses if @statuses.nil?
    Zwemwater::Base.new(query)
  end
end