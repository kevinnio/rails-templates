gem 'solidus', '~> 2.8'
gem 'solidus_auth_devise'

gem_group :development, :test do
  gem 'rspec-rails'
end

after_bundle do
  generate 'spree:install'
  generate 'solidus:auth:install'
  run 'bundle exec rake railties:install:migrations'

  run 'rm -rf test/'
  generate 'rspec:install'
end
