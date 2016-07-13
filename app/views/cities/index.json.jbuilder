json.array!(@cities) do |city|
  json.extract! city, :id, :name, :country, :city_code, :latitude, :longitude
  json.url city_url(city, format: :json)
end
