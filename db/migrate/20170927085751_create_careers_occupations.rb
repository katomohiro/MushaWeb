class CreateCareersOccupations < ActiveRecord::Migration[5.0]
  def change
    create_table :careers_occupations, id: false do |t|
      t.belongs_to :career, index: true
      t.belongs_to :occupation, index: true
    end
  end
end
