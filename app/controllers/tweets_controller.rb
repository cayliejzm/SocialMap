class TweetsController < ApplicationController
    before_action :authorise_twitter


    def get_tweets_by_trend
      tweets = client.search(params[:search]).take(10)
      render :json => tweets.to_json
    end

    def get_tweets_by_food

      @foodTweets = (["food", "breakfast", "lunch", "dinner", "delicious", "tasty", "culinary", "restaurant"], :woeid => @city.woeid, :since_id => Time.now )
      client.filter(:track => @foodTweets.join(",")) do |object|
        puts object.text if object.is_a?(Twitter::Tweet)
      end

      render :json => foodTweets.to_json
    end

    def get_tweets_by_nightlife

      @nightTweets = (["music", "live", "concert", "bar", "club", "dance", "drink", "party", "all-night"], :woeid => @city.woeid, :since_id => Time.now )
      client.filter(:track => @nightTweets.join(",")) do |object|
        puts object.text if object is_a?(Twitter::Tweet)
      end
      render :json => nightTweets.to_json
    end

    def get_tweets_by_health

      @healthTweets = (["gym", "health", "yoga", "spin", "organic", "sweat", "run", "fitness" ], :woeid => @city.woeid, :since_id => Time.now )
      client.filter(:track => @healthTweets.join(",")) do |object|
        puts object.text if object is_a?(Twitter::Tweet)
      end
      render :json => healthTweets.to_json
    end



    private

    def authorise_twitter
      @city = City.find params[:id]
      @client = Twitter::REST::Client.new do |config|
          config.consumer_key = 'h3nGJHkx3mpYPorGTuFaphves'
          config.consumer_secret = '8zCRdna7x0CFdrlG9rtkp9j2PApGJF4zrUh4k9hK4mOnT7YMLl'
          config.access_token = '3128393300-E2tM8ivNFbRSrbAh1hIZnO1Yulw9FBbEQChIqzS'
          config.access_token_secret = 'Jac4U4j9AgtjwwSzsY6QDb8lFnFV1BROEvQOSjItPak5J'
      end
    end

  end
