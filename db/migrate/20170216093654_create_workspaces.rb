class CreateWorkspaces < ActiveRecord::Migration[5.0]
  def change
    create_table :workspaces do |t|
      t.references :host, foreign_key: true
      t.text :name
      t.text :location
      t.text :country
      t.text :description
      t.integer :price
      t.integer :seats

      t.timestamps
    end
  end
end
