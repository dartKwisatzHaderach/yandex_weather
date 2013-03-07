require 'rubygems'
require 'selenium-webdriver'
require_relative 'page_object.rb'

PROXY = '77.243.10.210:3128'

profile = Selenium::WebDriver::Firefox::Profile.new
profile.proxy = Selenium::WebDriver::Proxy.new(
    :http     => PROXY,
    :ftp      => PROXY,
    :ssl      => PROXY
)

browser = Selenium::WebDriver.for :ff, :profile => profile
weather_page = WeatherPage.new(browser, true)
weather_page.check_city
browser.quit