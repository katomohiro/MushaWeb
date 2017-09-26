class CreateIndustryUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :industry_users do |t|
      t.references :industry, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
