#encoding:utf-8

require_relative '../config/proxy.rb'
require_relative '../config/cities.rb'

#Поиск прогноза погоды по городу
system ("ruby select_city.rb #{Cities::BORA_BORA}")
system ("ruby select_city.rb #{Cities::MOSCOW}")

#Прогрноз погоды для разных городов
system ("ruby check_city.rb #{Proxy::PROXY_MOSCOW}")
system ("ruby check_city.rb #{Proxy::PROXY_OMSK}")