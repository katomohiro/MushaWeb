class CreateCareerIndustries < ActiveRecord::Migration[5.0]
  def change
    create_table :career_industries do |t|
      t.references :industry, foreign_key: true
      t.references :career, foreign_key: true

      t.timestamps
    end
  end
end
