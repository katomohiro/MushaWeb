class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :area_id, :integer
    add_column :users, :musha_term, :string
  end
end
