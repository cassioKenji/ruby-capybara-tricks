require_relative "helpers/browser.rb"

After do |scenario|
  Browser.screenshot(scenario)
  Browser.delete_all_cookies
end
