require 'capybara/cucumber'
require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'



BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE'] #homolog

#homolog.yml  ou #producao
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")



Capybara.register_driver :selenium do |app| 
   
   if BROWSER.eql?('chrome') 
      Capybara::Selenium::Driver.new(app, :browser =>:chrome,)
   elsif BROWSER.eql?('firefox') 
      Capybara::Selenium::Driver.new(app,:browser =>:firefox, :marionette =>true)
   elsif BROWSER.eql?('ie') 
      Capybara::Selenium::Driver.new(app,:browser =>:internet_explorer)
   elsif BROWSER.eql?('safari') 
      Capybara::Selenium::Driver.new(app,:browser =>:safari)
   elsif BROWSER.eql?('poltergeist') 
   options = { js_errors: false }
   Capybara::Poltergeist::Driver.new(app, options)
end
end

Capybara.configure do |config|
   #selenium  selenium_chrome  selenium_chrome_healess 
   config.default_driver = :selenium 
   config.app_host = CONFIG['url_padrao']
   CONFIG['user']
   config.default_max_wait_time = 5
end