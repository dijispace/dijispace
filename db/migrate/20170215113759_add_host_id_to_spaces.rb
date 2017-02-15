class AddHostIdToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :host_id, :integer
  end
end
