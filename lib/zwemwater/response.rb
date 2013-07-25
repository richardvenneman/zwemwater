module Zwemwater
  module Response
    @@statuses = nil
    def self.statuses; @@statuses; end;
    def self.statuses=(value); @@statuses = value; end;
    
    def self.for(query)
       @@statuses['features'].select { |f| f['properties']['naam'] == query }.first || {}
    end
  end
end