class ChangeBreweryToBreweryId < ActiveRecord::Migration[5.0]
  def change
    remove_column :beers, :brewery
    add_column :beers, :brewery_id, :integer
  end
end
