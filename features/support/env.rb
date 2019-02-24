require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "pry"
require "dotenv/load"

GOOGLE_PAGE = ENV["GOOGLE_PAGE"]

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(args: [])
  Capybara::Selenium::Driver.new(app, :browser => :chrome, options: options)
end

Capybara.default_driver = :selenium
Capybara.save_path      = File.expand_path "./results"
