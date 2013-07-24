require 'minitest/autorun'
require 'zwemwater'

describe 'Zwemwater' do
  it 'allows the site to be read' do
    water = Zwemwater.new('Leeuwarden')
    water.site.must_equal 'Leeuwarden'
  end
end