require 'spec_helper'

source_url = 'http://www.zwemwater.nl/get_all_plekken'

describe Zwemwater::Service do
  it 'downloads the latest statuses' do
    Zwemwater::Service.get_statuses
    assert_requested :get, source_url
  end
end