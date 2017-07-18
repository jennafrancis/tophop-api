class ChangeBreweryIdToBrewery < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :brewery, :string
    remove_column :beers, :brewery_id
  end
end
