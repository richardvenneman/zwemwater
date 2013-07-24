require 'spec_helper'

statusses = ['goed', 'negatief_zwemadvies', 'waarschuwing', 'zwemverbod']

describe 'Zwemwater' do
  before do
    @water = Zwemwater.new('Lytse Wielen')
  end
  
  it 'allows the site to be read' do
    @water.site.must_equal 'Lytse Wielen'
  end
  
  it 'should download the latest statusses' do
    stub = stub_request(:any, 'www.zwemwater.nl/get_all_plekken')
    assert_requested(stub)
  end
  
  it 'should return the status for the chosen site' do
    statusses.must_include @water.status
  end
end