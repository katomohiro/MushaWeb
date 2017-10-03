class Article < ApplicationRecord
  has_and_belongs_to_many :industries
  has_and_belongs_to_many :occupations
  
  scope :title_like, -> title { where('title like ?', "%#{title}%") }
  scope :has_industry_ids_in, -> ids { joins(:industries).where(industries: {id: ids}) }
  scope :has_occupation_ids_in, -> ids { joins(:occupations).where(occupations: {id: ids}) }
  
end
