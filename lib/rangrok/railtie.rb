module Rangrok
  class Railtie < ::Rails::Railtie
    initializer 'rangrok_add_ngrok_to_allowed_hosts' do
      Rails.application.config.hosts << ".ngrok.io" if Rails.env.development?
    end

    initializer 'rangrok_add_localtunnel_to_allowed_hosts' do
      Rails.application.config.hosts << ".localtunnel.me" if Rails.env.development?
    end

    initializer 'rangrok_add_serveo_to_allowed_hosts' do
      Rails.application.config.hosts << ".serveo.net" if Rails.env.development?
    end
  end
end
