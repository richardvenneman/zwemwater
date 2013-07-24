require 'httparty'
require 'json'

module Zwemwater
  module Service
    SOURCE_URL = 'http://www.zwemwater.nl/get_all_plekken'
    
    def self.download_statusses
      response = HTTParty.get(SOURCE_URL)
      Zwemwater.statusses = JSON.parse(response.body)
    end
  end
end