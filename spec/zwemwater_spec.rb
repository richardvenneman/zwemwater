require 'spec_helper'

describe Zwemwater do
  it 'initializes a Zwemwater::Base instance' do
    water = Zwemwater.new('Lytse Wielen')
    water.class.must_equal Zwemwater::Base
  end
end