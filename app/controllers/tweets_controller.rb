class TweetsController < ApplicationController
before_action :authorise_twitter

  def get_tweets_by_trend
    tweets = client.search(params[:search]).take(10)
    render :json => tweets.to_json
    end
  end


  def get_tweets_by_food
    # foodTweets = client.search( "food, breakfast, lunch, dinner, yum, delicious, tasty, culinary", :woeid => client.woeid, :since_id => Time.now )
    # render :json => tweets.to_json
    # end

    foodTweets = (["food", "breakfast", "lunch", "dinner", "delicious", "tasty", "culinary", "restaurant"], :woeid => client.woeid, :since_id => Time.now )
    client.filter(:track => foodTweets.join(",")) do |object|
      puts object.text if object.is_a?(Twitter::Tweet)
    end

    render :json => foodTweets.to_json
  end

  def get_tweets_by_nightlife
    # nightTweets = client.search( "music, live, concert, bar, club, dance, drink, party, dance, all-night", :woeid => client.woeid, :since_id=> Time.now )
    # render :json => tweets.to_json
    # end

    nightTweets = (["music", "live", "concert", "bar", "club", "dance", "drink", "party", "all-night"], :woeid => client.woeid, :since_id => Time.now )
    client.filter(:track => nightTweets.join(",")) do |object|
      puts object.text if object is_a?(Twitter::Tweet)
    end
    render :json => nightTweets.to_json
  end

  def get_tweets_by_health
    # healthTweets = client.search( "gym, health, yoga, spin, organic, sweat, run, fitness", :woeid => client.woeid, :since_id => Time.now )
    # render :json => tweets.to_json
    # end

    healthTweets = client.search(["gym", "health", "yoga", "spin", "organic", "sweat", "run", "fitness" ], :woeid => client.woeid, :since_id => Time.now)
  end

  def get_tweets_by_art

    artTweets = client.search ( "gallery, museum, art, painting, artist, creative", :woeid => client.woeid, :since_id => Time.now )
    render :json => tweets.to_json

    end
  end


  def private

    def authorise_twitter

      client = Twitter::REST::Client.new do |config|
        config.consumer_key = 'h3nGJHkx3mpYPorGTuFaphves'
        config.consumer_secret = '8zCRdna7x0CFdrlG9rtkp9j2PApGJF4zrUh4k9hK4mOnT7YMLl'
        config.access_token = '3128393300-E2tM8ivNFbRSrbAh1hIZnO1Yulw9FBbEQChIqzS'
        config.access_token_secret = 'Jac4U4j9AgtjwwSzsY6QDb8lFnFV1BROEvQOSjItPak5J'
    end

  end
