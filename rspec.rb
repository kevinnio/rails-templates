gem_group :development, :test do
  gem 'rspec-rails', '~> 3'
end

after_bundle do
  run 'rm -rf test/'
  generate 'rspec:install'
end
