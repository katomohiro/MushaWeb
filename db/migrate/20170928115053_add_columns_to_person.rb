class AddColumnsToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :other_naitei, :text
    add_column :people, :is_student, :boolean
    add_column :people, :musha_term, :string
  end
end
