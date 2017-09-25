class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.int :person_id
      t.str :company_name

      t.timestamps
    end
  end
end
