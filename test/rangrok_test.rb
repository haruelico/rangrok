require 'test_helper'

class Rangrok::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Rangrok
  end

  test 'allow request from "*.ngrok.io"' do
    assert_includes Rails.application.config.hosts, ".ngrok.io"
  end
end
