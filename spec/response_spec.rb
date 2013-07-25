require 'spec_helper'

describe Zwemwater::Response do
  it 'caches the response' do
    Zwemwater::Service.get_statuses
    Zwemwater::Response.statuses.wont_equal nil
  end
end