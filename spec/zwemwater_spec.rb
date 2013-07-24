require 'spec_helper'
require 'httparty'

source_url = 'http://www.zwemwater.nl/get_all_plekken'
statusses = [:goed, :negatief_zwemadvies, :waarschuwing, :zwemverbod]

describe 'Zwemwater' do
  before do
    @water = Zwemwater.new('Lytse Wielen')
  end
  
  it 'allows the query to be read' do
    @water.query.must_equal 'Lytse Wielen'
  end
  
  it 'should return the status' do
    @water.get_data
    statusses.must_include @water.status['code']
    
    # Too tricky to test this due to the lack of a 'before test suite' in MiniTest
    # assert_requested :get, source_url
  end
end