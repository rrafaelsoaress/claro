require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'site_prism'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)


Capybara.configure do |config|
    config.default_driver = :selenium
    default_max_wait_time = 5
end


BROWSER = ENV['BROWSER']
ENV_TYPE = ENV['ENV_TYPE']
DATA = YAML.load_file(File.dirname(__FILE__) + "/#{ENV_TYPE}.yaml") 

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(
    app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOption' => {
                'args' => ['windows-size=1366,768']
            }
        )
    )
    elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(
        app,
        :browser => :firefox,
        :marionette => true
    )
    end
end