class CreateArticlesOccupations < ActiveRecord::Migration[5.0]
  def change
    create_table :articles_occupations, id: false do |t|
      t.references :article, index: true, null: false
      t.references :occupations, index: true, null: false
    end
  end
end
