# code,city,country,lat,lon
# SYD,SYDNEY,AUSTRALIA,-33.87,151.20
# MEX,MEXICO CITY,MEXICO,19.43,-99.13
# LAX,LOS ANGELES,USA,34.05,-118.24
# DAM,DAMASCUS,SYRIA,33.51,36.27
# NYC,NEW YORK CITY,USA,40.71,-74.00
# OSL,OSLO,NORWAY,59.91,10.75
# MOW,MOSCOW,RUSSIA,55.75,37.61
# VAN,VANCOUVER,CANADA,49.28,-123.12
# CPT,CAPE TOWN,SOUTH AFRICA,-33.92,18.42
# ZNZ,ZANZIBAR,TANZANIA,-6.13,39.31
# TYO,TOKYO,JAPAN,35.68,139.76
# AKL,AUCKLAND,NEW ZEALAND,-36.85,174.78
# BKK,BANGKOK,THAILAND,13.75,100.48
# DEL,DELHI,INDIA,29.01,77.38
# SIN,SINGAPORE,SINGAPOR,1.36,103.75
# RIO,RIO DE JANEIRO,BRAZIL,-22.90,-43.24
#


City.destroy_all

Sydney = City.create :name => 'Sydney', :country => 'Australia', :city_code => 'SYD', :latitude => '-33.87', :longitude => '151.20', :woeid => 1105779, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Mexico = City.create :name => 'Mexico City', :country => 'Mexico', :city_code => 'MEX', :latitude => '19.43', :longitude => '-99.13', :woeid => 116545, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

LA = City.create :name => 'Los Angeles', :country => 'USA', :city_code => 'LAX', :latitude => '34.05', :longitude => '-118.24', :woeid => 2442047, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Damascus = City.create :name => 'Damascus', :country => 'Syria', :city_code => 'DAM', :latitude => '33.51', :longitude => '36.27', :woeid => 1947122, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

NYC = City.create :name => 'New York City', :country => 'USA', :city_code => 'NYC', :latitude => '40.71', :longitude => '-74.00', :woeid => 2459115, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Oslo = City.create :name => 'Oslo', :country => 'Norway', :city_code => 'OSL', :latitude => '59.91', :longitude => '10.75', :woeid => 862592, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Moscow = City.create :name => 'Moscow', :country => 'Russia', :city_code => 'MOW', :latitude => '55.75', :longitude => '37.61', :woeid => 2122265, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Vancouver = City.create :name => 'Vancouver', :country => 'Canada', :city_code => 'VAN', :latitude => '49.28', :longitude => '-123.12', :woeid => 9807, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Capetown = City.create :name => 'Cape Town', :country => 'South Africa', :city_code => 'CPT', :latitude => '-33.92', :longitude => '18.42', :woeid => 1591691, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Zanzibar = City.create :name => 'Zanzibar', :country => 'Tanzania', :city_code => 'ZNZ', :latitude => '-6.13', :longitude => '39.31', :woeid => 1450016, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Tokyo = City.create :name => 'Tokyo', :country => 'Japan', :city_code => 'TYO', :latitude => '35.68', :longitude => '139.76', :woeid => 1118370, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Auckland = City.create :name => 'Auckland', :country => 'New Zealand', :city_code => 'AKL', :latitude => '-36.85', :longitude => '174.78', :woeid => 2348079, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Bangkok = City.create :name => 'Bangkok', :country => 'Thailand', :city_code => 'BKK', :latitude => '13.75', :longitude => '100.48', :woeid => 1225448, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Delhi = City.create :name => 'Dehli', :country => 'India', :city_code => 'DEL', :latitude => '29.01', :longitude => '77.38', :woeid => 29115375, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Singapore = City.create :name => 'Singapore', :country => 'Singapore', :city_code => 'SIN', :latitude => '1.36', :longitude => '103.75', :woeid => 23424948, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Rio = City.create :name => 'Rio De Janeiro', :country => 'Brazil', :city_code => 'RIO', :latitude => '-22.90', :longitude => '-43.24', :woeid => 455825, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1

Perth = City.create :name => 'Perth', :country => 'Australia', :city_code => 'PER', :latitude => '-31.95', :longitude => '115.86', :woeid => 1098081, foodTweetLength: 1, nightTweetLength: 1, healthTweetLength: 1
