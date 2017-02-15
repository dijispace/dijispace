class AddCountryToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :country, :string
  end
end
