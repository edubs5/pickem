source 'https://rubygems.org'
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg',    '0.18.3'

# connects rails with bower
gem 'bower-rails', '0.10.0'

# jquery for rails
gem 'jquery-rails', '4.0.5'

# coffee for rails
gem 'coffee-rails', '4.1.0'

# heroku dependencies
gem 'foreman',      '0.78.0'

# heroku dependencies
group :production, :staging do
  gem 'rails_12factor',            '0.0.3'
  gem 'rails_stdout_logging',      '0.0.4'
  gem 'rails_serve_static_assets', '0.0.4'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug'
  gem 'rubocop',        '0.34.1'
  gem 'pronto',         '0.4.3'
  gem 'pronto-rubocop', '0.4.6'
  gem 'rspec-rails',    '3.3.3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
end

