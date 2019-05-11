gem 'solidus', '~> 2.8'
gem 'solidus_auth_devise'

after_bundle do
  generate 'spree:install'
  generate 'solidus:auth:install'
  run 'bundle exec rake railties:install:migrations'
end
