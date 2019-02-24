require_relative "helpers/browser.rb"

After do |scenario|
  Browser.screenshot(scenario)
end
