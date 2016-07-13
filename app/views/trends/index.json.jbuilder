json.array!(@trends) do |trend|
  json.extract! trend, :id, :name, :location, :tweet_volume
  json.url trend_url(trend, format: :json)
end
