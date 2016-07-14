class AddFoodTweetLengthToCity < ActiveRecord::Migration
  def change
    add_column :cities, :foodTweetLength, :integer, :default => 0
  end
end
