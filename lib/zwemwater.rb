require 'httpclient'

class Zwemwater
  attr_reader :site
  
  SOURCE_URL = 'http://www.zwemwater.nl/get_all_plekken'
  
  def initialize(query)
    @site = query
    
    download_statusses
  end
  
  def download_statusses
    http_client = HTTPClient.new
    response = http_client.get(SOURCE_URL)
    @statusses = response.http_body
  end
end