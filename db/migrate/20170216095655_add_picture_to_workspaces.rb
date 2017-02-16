class AddPictureToWorkspaces < ActiveRecord::Migration[5.0]
  def change
    add_column :workspaces, :picture, :string
  end
end
