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

Sydney = City.create :name => 'Sydney', :country => 'Australia', :city_code => 'SYD', :latitude => '-33.87', :longitude => '151.20', :woeid => 1105779, :image => 'https://media-cdn.tripadvisor.com/media/photo-s/02/26/68/dd/sydney-opera-house.jpg'

Mexico = City.create :name => 'Mexico City', :country => 'Mexico', :city_code => 'MEX', :latitude => '19.43', :longitude => '-99.13', :woeid => 116545, :image => 'https://upload.wikimedia.org/wikipedia/commons/9/98/Mexico_City_Zocalo_Cathedral.jpg'

LA = City.create :name => 'Los Angeles', :country => 'USA', :city_code => 'LAX', :latitude => '34.05', :longitude => '-118.24', :woeid => 2442047, :image =>'https://cache-graphicslib.viator.com/graphicslib/thumbs360x240/10065/SITours/privately-customized-tour-of-los-angeles-in-los-angeles-227795.jpg'


NYC = City.create :name => 'New York City', :country => 'USA', :city_code => 'NYC', :latitude => '40.71', :longitude => '-74.00', :woeid => 2459115, :image => 'http://www.femfessionals.com/wp-content/uploads/2015/12/6356884908350255571042721344_2-nyc-empire-nina-papiorek.jpg'

Oslo = City.create :name => 'Oslo', :country => 'Norway', :city_code => 'OSL', :latitude => '59.91', :longitude => '10.75', :woeid => 862592, :image => 'https://res-2.cloudinary.com/simpleview/image/upload/v1/clients/norway/Barcode-Oslo-Norway-2-1_bd5d9b33-a6cf-4db3-b77d-ff8ca69f8edf.jpg'

Moscow = City.create :name => 'Moscow', :country => 'Russia', :city_code => 'MOW', :latitude => '55.75', :longitude => '37.61', :woeid => 2122265, :image => 'http://cdn.ek.aero/english/images/Moscow-1_tcm233-2369440.jpg'

Vancouver = City.create :name => 'Vancouver', :country => 'Canada', :city_code => 'VAN', :latitude => '49.28', :longitude => '-123.12', :woeid => 9807, :image => 'https://res-4.cloudinary.com/simpleview/image/upload/c_fill,f_auto,h_1110,q_75,w_1920/v1/clients/vancouverbc/The-City_121bc6b2-ca7f-45be-a877-7e166af5502d.jpg'

Capetown = City.create :name => 'Cape Town', :country => 'South Africa', :city_code => 'CPT', :latitude => '-33.92', :longitude => '18.42', :woeid => 1591691, :image => 'http://www.travelstart.co.za/blog/wp-content/uploads/2013/11/Greg-Lumley.jpg'

Zanzibar = City.create :name => 'Zanzibar', :country => 'Tanzania', :city_code => 'ZNZ', :latitude => '-6.13', :longitude => '39.31', :woeid => 1450016, :image => 'http://cdn2.africatravelresource.com/africa/tanzania/c/zanzibar/0/stills/01zanzibar/30TC29-IM1030-zanzibar-island-1475.JPG'

Tokyo = City.create :name => 'Tokyo', :country => 'Japan', :city_code => 'TYO', :latitude => '35.68', :longitude => '139.76', :woeid => 1118370, :image => 'http://s1.it.atcdn.net/wp-content/uploads/2015/08/6-Tokyo.jpg'

Auckland = City.create :name => 'Auckland', :country => 'New Zealand', :city_code => 'AKL', :latitude => '-36.85', :longitude => '174.78', :woeid => 2348079, :image => 'http://www.aucklandmasonry.co.nz/wp-content/uploads/2015/07/auckland.jpg'

Bangkok = City.create :name => 'Bangkok', :country => 'Thailand', :city_code => 'BKK', :latitude => '13.75', :longitude => '100.48', :woeid => 1225448, :image => 'https://media-cdn.tripadvisor.com/media/photo-s/03/9b/2d/ad/bangkok.jpg'

Delhi = City.create :name => 'Dehli', :country => 'India', :city_code => 'DEL', :latitude => '29.01', :longitude => '77.38', :woeid => 29115375, :image => 'https://static2.stuff.co.nz/1349066178/917/7753917.jpg'

Singapore = City.create :name => 'Singapore', :country => 'Singapore', :city_code => 'SIN', :latitude => '1.36', :longitude => '103.75', :woeid => 23424948, :image => 'http://i2.cdn.turner.com/cnnnext/dam/assets/150806121501-sg-50---lead-image-super-169.jpg'

Rio = City.create :name => 'Rio De Janeiro', :country => 'Brazil', :city_code => 'RIO', :latitude => '-22.90', :longitude => '-43.24', :woeid => 455825, :image => 'http://www.tourist-destinations.net/wp-content/uploads/2013/09/Rio.jpg'

Perth = City.create :name => 'Perth', :country => 'Australia', :city_code => 'PER', :latitude => '-31.95', :longitude => '115.86', :woeid => 1098081, :image => 'http://www.westernaustralia.com/SiteCollectionImages/Destinations/EP/109855-perth-and-swan-river-hero.jpg?RenditionID=1'
