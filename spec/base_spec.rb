require 'spec_helper'

statusses = [:goed, :negatief_zwemadvies, :waarschuwing, :zwemverbod]

describe Zwemwater::Base do
  before do
    @water = Zwemwater.new('Lytse Wielen')
  end
  
  it 'returns the query' do
    @water.query.must_equal 'Lytse Wielen'
  end
  
  it 'returns the status' do
    @water.get_data
    statusses.must_include @water.status['code']
  end
end