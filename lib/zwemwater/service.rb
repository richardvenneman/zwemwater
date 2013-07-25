require 'httparty'
require 'json'

module Zwemwater
  module Service
    SOURCE_URL = 'http://www.zwemwater.nl/get_all_plekken'
    
    def self.get_statuses
      response = HTTParty.get(SOURCE_URL)
      Zwemwater::Response.statuses = JSON.parse(response.body)
    end
  end
end