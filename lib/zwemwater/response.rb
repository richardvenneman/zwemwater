module Zwemwater
  module Response
    @@statuses = nil
    def self.statuses; @@statuses; end;
    def self.statuses=(value); @@statuses = value; end;
    
    @@locations = nil
    def self.locations
      return @@locations unless @@locations.nil?
      @@locations = @@statuses['features'].collect { |f| f['properties']['naam'] }
    end
    
    def self.for(query)
       @@statuses['features'].select { |f| f['properties']['naam'] == query }.first || {}
    end
  end
end