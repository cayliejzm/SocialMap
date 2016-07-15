class CitiesController < ApplicationController
  before_action :authorise, :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def show
    @city = City.find params[:id]
    @trends = @client.trends( @city.woeid )

    @foodTweets = []
    tweet_array = ["#food", "#delicious", "#culinary", "#restaurant"]
    tweet_array.each do | t |
      tresult = @client.search(t, :woeid => @city.woeid, :since_id => Time.now, :count => 10).take(10)
      tresult.each do | tr |
        @foodTweets << tr[:text]
      end
    end

    @nightTweets = []
    tweet_array = ["#bar", "#club", "#dance", "#drink", "#party", "#all-night"]
    tweet_array.each do |t|
      tresult = @client.search(t, :woeid => @city.woeid, :since_id => Time.now, :count => 10).take(10)
      tresult.each do |tr|
        @nightTweets << tr[:text]
      end
    end

    @nightTweetLength = @nightTweets.length

    @healthTweets = []
    tweet_array = ["#gym", "#health", "#yoga", "#organic", "#run", "#fitness"]
    tweet_array.each do |t|
      tresult = @client.search(t, :woeid => @city.woeid, :since_id => Time.now, :count => 10).take(10)
      tresult.each do |tr|
        @healthTweets << tr[:text]
      end
    end

    @healthTweetLength = @healthTweets.length
  end


  def new
    @city = City.new
  end

  def edit
  end


  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def authorise
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key = 'h3nGJHkx3mpYPorGTuFaphves'
        config.consumer_secret = '8zCRdna7x0CFdrlG9rtkp9j2PApGJF4zrUh4k9hK4mOnT7YMLl'
        config.access_token = '3128393300-E2tM8ivNFbRSrbAh1hIZnO1Yulw9FBbEQChIqzS'
        config.access_token_secret = 'Jac4U4j9AgtjwwSzsY6QDb8lFnFV1BROEvQOSjItPak5J'
      end
    end

    def set_city
      @city = City.find(params[:id])
    end

    def city_params
      params.require(:city).permit(:name, :country, :city_code, :latitude, :longitude, :woeid,  :foodTweetLength, :nightTweetLength, :healthTweetLength)
    end
end
