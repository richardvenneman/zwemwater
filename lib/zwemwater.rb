require 'httparty'
require 'json'

class Zwemwater
  attr_reader :site, :status
  
  SOURCE_URL = 'http://www.zwemwater.nl/get_all_plekken'
  
  def initialize(query)
    @site = query
    
    download_statusses
    get_status(@site)
  end
  
  def download_statusses
    response = HTTParty.get(SOURCE_URL)
    @statusses = JSON.parse(response.body)
  end
  
  def get_status(site)
    data = @statusses['features'].select { |f| f['properties']['naam'] == @site }.first
    @status = data['properties']['status']['code']
  end
end