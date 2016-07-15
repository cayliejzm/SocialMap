namespace :city do
  desc "TODO"
  task tweet_count: :environment do


    require 'twitter'
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'h3nGJHkx3mpYPorGTuFaphves'
      config.consumer_secret = '8zCRdna7x0CFdrlG9rtkp9j2PApGJF4zrUh4k9hK4mOnT7YMLl'
      config.access_token = '3128393300-E2tM8ivNFbRSrbAh1hIZnO1Yulw9FBbEQChIqzS'
      config.access_token_secret = 'Jac4U4j9AgtjwwSzsY6QDb8lFnFV1BROEvQOSjItPak5J'
    end

    @cities = City.all

    @cities.each do |c|
      puts "I ran."

      foodTweets = []
      tweet_array = ["#food", "#delicious", "#culinary", "#restaurant"]
      tweet_array.each do | t |
        tresult = @client.search(t, :woeid => c.woeid, :since_id => Time.now)
        tresult.to_hash[:statuses].each do | tr |
          foodTweets << tr[:text]
        end
      end # end food

      nightTweets = []
      tweet_array = ["#bar", "#club", "#dance", "#drink", "#party", "#all-night"]
      tweet_array.each do | t |
        tresult = @client.search(t, :woeid => c.woeid, :since_id => Time.now)
        tresult.to_hash[:statuses].each do | tr |
          nightTweets << tr[:text]
        end
      end # end night

      healthTweets = []
      tweet_array = ["#gym", "#health", "#yoga", "#organic", "#run", "#fitness"]
      tweet_array.each do | t |
        tresult = @client.search(t, :woeid => c.woeid, :since_id => Time.now)
        tresult.to_hash[:statuses].each do | tr |
          healthTweets << tr[:text]
        end
      end # end health

    end

  end

end
