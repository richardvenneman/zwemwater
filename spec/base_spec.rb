require 'spec_helper'

statuses = [:goed, :negatief_zwemadvies, :waarschuwing, :zwemverbod]

describe Zwemwater::Base do
  before do
    @water = Zwemwater.new('Lytse Wielen')
  end
  
  it 'returns the query' do
    @water.query.must_equal 'Lytse Wielen'
  end
  
  it 'returns the status' do
    statuses.must_include @water.status['code']
  end
  
  it 'returns nil as status when the location is not found' do
    water = Zwemwater.new('asdfasdf')
    water.status.must_equal nil
  end
end