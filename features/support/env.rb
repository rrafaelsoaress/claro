require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'site_prism'


ENV_TYPE = ENV['ENV_TYPE']
BROWSER = ENV['BROWSER']

Capybara.configure do |config|
 config.default_driver = :selenium
 config.default_max_wait_time = 10
 config.app_host = 'https://claro-vendas.whitelabel.com.br'
end