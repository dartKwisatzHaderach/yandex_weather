require 'rubygems'
require 'selenium-webdriver'
require_relative '../page_object/weather_page.rb'

PROXY = ARGV[0]

profile = Selenium::WebDriver::Firefox::Profile.new
profile.proxy = Selenium::WebDriver::Proxy.new(
    :http     => PROXY,
    :ftp      => PROXY,
    :ssl      => PROXY
)

begin
  browser = Selenium::WebDriver.for :ff, :profile => profile
  weather_page = WeatherPage.new(browser, true)
  weather_page.check_city
  browser.quit
rescue
  browser.quit
end