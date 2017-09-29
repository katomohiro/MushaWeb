class CreateIndustriesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :industries_users, id: false do |t|
      t.references :industry, index: true, null: false
      t.references :user, index: true, null: false
    end
  end
end
