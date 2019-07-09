module Rangrok
  class Railtie < ::Rails::Railtie
    initializer 'rangrok_add_ngrok_to_allowed_hosts' do
      Rails.application.config.hosts << ".ngrok.io" if Rails.env.development?
    end
  end
end
