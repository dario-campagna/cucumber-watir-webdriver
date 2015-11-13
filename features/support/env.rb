require 'watir-webdriver'
require 'cucumber'

Before do
  @browser = Watir::Browser.new :firefox
end

After do
  @browser.close
end