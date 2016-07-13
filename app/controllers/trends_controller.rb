class TrendsController < ApplicationController
before_action :authorise_twitter

  def index
    @trends = Trend.all
    last_trend = Trend.last
    location = params[:location]
    time_gap = params[:time_gap]

    if created_60_mintues_ago(last_trend)
      begin
        get_trends_from_twitter
      rescue
      end
    end
    trends = Trend.where.not(value: nil)
    if time_gap
      trends = trends.where(created_at: ((Time.now + (time_gap.to_i - 1).hours)...(Time.now + time_gap.to_i.hours )))
    end
    if location && location != 'All'
      render :json => trends.where(location: location).to_json
    else
      render :json => trends.to_json
    end
  end

def map
  last_trend = Trend.last
  time_gap = params[:time_gap]

  if created_60_mintues_ago(last_trend)
    get_trends_from_twitter
  end

  maptrends = Trend.where.not(value: nil)
  maptrends = maptrends.where(created_at: ((Time.now + (time_gap.to_i - 1).hours)...(Time.now + time_gap.to_i.hours )))
  render :json => maptrends.to_json
end

  def show
    @trend = Trend.find( params[:id] )

    # client = Twitter::REST::Client.new do |config|
    #   config.consumer_key = 'h3nGJHkx3mpYPorGTuFaphves'
    #   config.consumer_secret = '8zCRdna7x0CFdrlG9rtkp9j2PApGJF4zrUh4k9hK4mOnT7YMLl'
    #   config.access_token = '3128393300-E2tM8ivNFbRSrbAh1hIZnO1Yulw9FBbEQChIqzS'
    #   config.access_token_secret = 'Jac4U4j9AgtjwwSzsY6QDb8lFnFV1BROEvQOSjItPak5J'
    # end

    trends = client.trends( @trend.woeid )

  end

private

  def authorise_twitter

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'h3nGJHkx3mpYPorGTuFaphves'
      config.consumer_secret = '8zCRdna7x0CFdrlG9rtkp9j2PApGJF4zrUh4k9hK4mOnT7YMLl'
      config.access_token = '3128393300-E2tM8ivNFbRSrbAh1hIZnO1Yulw9FBbEQChIqzS'
      config.access_token_secret = 'Jac4U4j9AgtjwwSzsY6QDb8lFnFV1BROEvQOSjItPak5J'
    end

  end


  def created_60_mintues_ago(trend)

  !trend || (Time.now - trend.created_at > 60.minutes)
  end

  def get_trends_from_twitter
  #   client = Twitter::REST::Client.new do |config|
  #     config.consumer_key = 'h3nGJHkx3mpYPorGTuFaphves'
  #     config.consumer_secret = '8zCRdna7x0CFdrlG9rtkp9j2PApGJF4zrUh4k9hK4mOnT7YMLl'
  #     config.access_token = '3128393300-E2tM8ivNFbRSrbAh1hIZnO1Yulw9FBbEQChIqzS'
  #     config.access_token_secret = 'Jac4U4j9AgtjwwSzsY6QDb8lFnFV1BROEvQOSjItPak5J'
  # end
  [1105779, 116545, 2442047, 1947122, 2459115, 862592, 2122265, 9807, 1591691, 1450016, 1118370, 2348079, 1225448, 29115375, 23424948, 455825, 1098081].each do |woeid|

    trends = client.trends(woeid)
    trends.each do |trend|
      Trend.create(name: trend.name, value: trend.tweet_value, location: trends.location.name)
    end
  end
  destroy_old_tweets
end

  def destroy_old_tweets
    Trend.where("created_at < ?", Time.now - 1.days).destroy_all
  end

end
