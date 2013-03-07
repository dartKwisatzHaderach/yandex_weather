require 'page-object'

class WeatherPage
  include PageObject

  page_url('http://pogoda.yandex.ru')

  span(:city, :class => 'b-navigation-city__city')
  text_field(:search_field, :class => 'b-form-input__input')
  button(:search_button, :class => 'b-form-button__input')

  def check_city
    puts city
  end

end