class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.integer :person_id
      t.string :company_name

      t.timestamps
    end
  end
end
