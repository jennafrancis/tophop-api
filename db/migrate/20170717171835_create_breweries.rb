class CreateBreweries < ActiveRecord::Migration[5.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :street_address
      t.string :city_state

      t.timestamps
    end
  end
end
