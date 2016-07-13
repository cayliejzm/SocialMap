class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :city_code
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
