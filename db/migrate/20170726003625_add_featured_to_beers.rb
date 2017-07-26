class AddFeaturedToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :featured, :boolean, default: false
  end
end
