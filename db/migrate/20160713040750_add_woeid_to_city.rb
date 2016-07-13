class AddWoeidToCity < ActiveRecord::Migration
  def change
    add_column :cities, :woeid, :integer
  end
end
