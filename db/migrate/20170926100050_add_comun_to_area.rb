class AddComunToArea < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :region, :string
  end
end
