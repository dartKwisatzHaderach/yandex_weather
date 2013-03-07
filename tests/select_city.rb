#encoding: utf-8

require 'rubygems'
require 'selenium-webdriver'
require_relative '../page_object/weather_page.rb'

CITY = ARGV[0]

begin
  browser = Selenium::WebDriver.for :ff
  weather_page = WeatherPage.new(browser, true)
  weather_page.search_field = CITY
  weather_page.search_button
  puts "Success!" if (weather_page.city == CITY)
  browser.quit
rescue
  browser.quit
end