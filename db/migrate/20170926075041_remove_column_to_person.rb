class RemoveColumnToPerson < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :admin, :integer
  end
end
