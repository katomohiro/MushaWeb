class CreateCareersIndustries < ActiveRecord::Migration[5.0]
  def change
    create_table :careers_industries do |t|
      t.belongs_to :career, index: true
      t.belongs_to :industry, index: true
    end
  end
end
