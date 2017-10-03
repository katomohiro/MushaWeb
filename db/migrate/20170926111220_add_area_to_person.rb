class AddAreaToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :area_id, :integer
  end
end
