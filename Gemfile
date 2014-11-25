source 'https://rubygems.org'

ruby '1.9.3', :engine => 'jruby', :engine_version => '1.7.16.1'

gem 'rails', '4.1.8'
gem 'protected_attributes'



# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'activerecord-jdbcsqlite3-adapter'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '5.0.0.beta1'
  gem 'coffee-rails', '4.0.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  #gem 'therubyrhino'

  #gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


group :development do
  #gem 'sqlite3', '1.3.5'
end

group :production do

#heroku
  gem "foreman"
  gem 'activerecord-jdbc-adapter'
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'jdbc-postgres'
  gem "rails_12factor"
  gem "rails_stdout_logging"
  gem "rails_serve_static_assets"
end
