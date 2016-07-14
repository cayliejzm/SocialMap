class AddNightTweetLengthToCity < ActiveRecord::Migration
  def change
    add_column :cities, :nightTweetLength, :integer, :default => 0
  end
end
