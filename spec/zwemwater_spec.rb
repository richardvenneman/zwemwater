require 'spec_helper'

describe 'Zwemwater' do
  before do
    @water = Zwemwater.new('Leeuwarden')
  end
  
  it 'allows the site to be read' do
    @water.site.must_equal 'Leeuwarden'
  end
  
  it 'should download the latest statusses' do
    stub = stub_request(:any, 'www.zwemwater.nl/get_all_plekken')
    assert_requested(stub)
  end
end