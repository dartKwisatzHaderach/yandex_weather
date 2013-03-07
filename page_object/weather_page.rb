require 'page-object'

class WeatherPage
  include PageObject

  page_url('http://pogoda.yandex.ru')

  span(:city, :class => 'b-navigation-city__city')

  def check_city
    puts city
  end
end