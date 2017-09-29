class CreateOccupationsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :occupations_users, id: false do |t|
      t.references :occupation, index: true, null: false
      t.references :user, index: true, null: false
    end
  end
end
