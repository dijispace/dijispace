class AddBannerToWorkspaces < ActiveRecord::Migration[5.0]
  def change
    add_column :workspaces, :banner, :string
  end
end
