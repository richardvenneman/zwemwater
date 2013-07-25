require 'spec_helper'

source_url = 'http://www.zwemwater.nl/get_all_plekken'

describe Zwemwater::Service do
  it 'downloads the latest statusses' do
    Zwemwater::Service.download_statusses
    assert_requested :get, source_url
  end
end