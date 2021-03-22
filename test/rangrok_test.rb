require 'test_helper'

class Rangrok::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Rangrok
  end

  test 'allow request from "*.ngrok.io"' do
    assert_includes Rails.application.config.hosts, ".ngrok.io"
  end

  test 'allow request from "*.localtunnel.me"' do
    assert_includes Rails.application.config.hosts, ".localtunnel.me"
  end

  test 'allow request from "*.serveo.net"' do
    assert_includes Rails.application.config.hosts, ".serveo.net"
  end

  test 'allow request from "*.tunnelto.dev"' do
    assert_includes Rails.application.config.hosts, ".tunnelto.dev"
  end
end
