require 'zwemwater/version'
require 'zwemwater/base'
require 'zwemwater/service'
require 'zwemwater/response'

module Zwemwater
  def self.new(query)
    Zwemwater::Service.get_statuses if Zwemwater::Response.statuses.nil?
    Zwemwater::Base.new(query)
  end
end