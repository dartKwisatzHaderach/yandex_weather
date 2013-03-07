#encoding:utf-8

require_relative '../config/proxy.rb'

#Поиск прогноза погоды по городу
system ("ruby select_city.rb Бора-Бора")

#Прогрноз погоды для разных городов
system ("ruby check_city.rb #{Proxy::PROXY_MOSCOW}")
system ("ruby check_city.rb #{Proxy::PROXY_OMSK}")