class CreateCareerOccupations < ActiveRecord::Migration[5.0]
  def change
    create_table :career_occupations do |t|
      t.references :occupation, foreign_key: true
      t.references :career, foreign_key: true

      t.timestamps
    end
  end
end
