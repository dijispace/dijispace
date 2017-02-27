class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :country
      t.string :city
      t.integer :seats
      t.decimal :price

      t.timestamps
    end
  end
end
