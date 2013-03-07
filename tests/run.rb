require_relative '../config/proxy.rb'

system ("ruby check_city.rb #{Proxy::PROXY_MOSCOW}")
system ("ruby check_city.rb #{Proxy::PROXY_OMSK}")