module Zwemwater
  class Base
    attr_reader :query, :data
    
    def initialize(query)
      @query = query
      @data = Zwemwater::Response.for(@query)
    end
    
    def status
      return nil if @data.empty?
      return @status unless @status.nil?
      
      status = @data['properties']['status']
      status['code'] = status['code'].to_sym
      status['date'] = Date.parse(status.delete('datum')) unless status['datum'].nil?
      
      @status = status
    end
  end
end
