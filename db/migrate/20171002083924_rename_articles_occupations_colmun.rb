class RenameArticlesOccupationsColmun < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles_occupations, :occupations_id, :occupation_id
  end
end
