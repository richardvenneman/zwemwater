require 'spec_helper'

describe Zwemwater::Response do
  it 'caches the response' do
    Zwemwater::Service.get_statuses
    Zwemwater::Response.statuses.wont_equal nil
  end
  
  it 'lists the available locations' do
    Zwemwater::Service.get_statuses
    
    locations = Zwemwater::Response.locations
    locations.class.must_equal Array
    locations.length.must_be :>, 0
  end
end