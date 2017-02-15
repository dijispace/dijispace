class AddPictureToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :picture, :string
  end
end
