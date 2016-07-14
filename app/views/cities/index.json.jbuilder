json.array!(@cities) do |city|
  json.extract! city, :id, :id, :name, :country, :city_code, :latitude, :longitude, :woeid,  :foodTweetLength, :nightTweetLength, :healthTweetLength
  json.url city_url(city, format: :json)
end
