module Zwemwater
  class Base
    attr_reader :query, :data
    
    def initialize(query)
      @query = query
    end
    
    def get_data
      Zwemwater::Service.download_statusses if Zwemwater.statusses.nil?
      @data = Zwemwater.statusses['features'].select { |f| f['properties']['naam'] == @query }.first
    end
    
    def status
      get_data if @status.nil?
      
      status = @data['properties']['status']
      status['code'] = status['code'].to_sym
      status['date'] = Date.parse(status['datum']) unless status['datum'].nil?
      
      @status = status
    end
  end
end
