class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.text :name
      t.text :location
      t.text :description
      t.integer :price
      t.integer :seats

      t.timestamps
    end
  end
end
