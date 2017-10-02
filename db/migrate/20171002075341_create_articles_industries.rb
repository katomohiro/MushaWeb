class CreateArticlesIndustries < ActiveRecord::Migration[5.0]
  def change
    create_table :articles_industries, id: false do |t|
      t.references :article, index: true, null: false
      t.references :industry, index: true, null: false
    end
  end
end
