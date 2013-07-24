require 'httparty'
require 'json'

class Zwemwater
  attr_reader :site
  
  SOURCE_URL = 'http://www.zwemwater.nl/get_all_plekken'
  
  def initialize(query)
    @site = query
    
    download_statusses
  end
  
  def download_statusses
    response = HTTParty.get(SOURCE_URL)
    @statusses = response.body
  end
end