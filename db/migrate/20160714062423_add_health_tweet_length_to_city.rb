class AddHealthTweetLengthToCity < ActiveRecord::Migration
  def change
    add_column :cities, :healthTweetLength, :integer, :default => 0
  end
end
