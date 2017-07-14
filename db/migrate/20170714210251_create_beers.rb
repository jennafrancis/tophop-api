class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :style
      t.float :abv
      t.integer :ibu
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
