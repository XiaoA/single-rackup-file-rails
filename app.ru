# frozen_string_literal: true

require 'bundler/inline'

gemfile(true) do
  source 'https://rubygems.org'

  ruby '3.1.2'

  gem 'rails', '~> 7.0', '>= 7.0.3.1'
  gem 'sqlite3', '~> 1.4', '>= 1.4.4'
  gem 'puma', '~> 5.6', '>= 5.6.5'  
end

require 'rails/all'
database = 'development.sqlite3'

ENV['DATABASE_URL'] = "sqlite3:#{database}"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: database)
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define do
  create_table :posts, force: true do |t|
  end
end

class Post < ActiveRecord::Base  
end

class App < Rails::Application
  config.root = __dir__
  config.consider_all_requests_local = true
  config.secret_key_base = 'CHANGE_ME_PLEASE'

  config.active_storage.service_configurations =
    {
      'local' =>
      {
        'service' => 'Disk',
        'root' => './storage' 
      }
    }

  routes.append do
    root to: 'welcome#index'    
  end
end

class WelcomeController < ActionController::Base
  def index
    render inline: 'Hello, world!'    
  end
end

App.initialize!
run App
