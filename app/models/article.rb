class Article < ApplicationRecord
  has_and_belongs_to_many :industries
  has_and_belongs_to_many :occupations
  
  scope :title_like, -> title { where('title like ?', "%#{title}%") }
  scope :has_industry_ids_in, -> ids { join(:industries).where(industries: {ids: ids}) }
  scope :has_occupation_ids_in, -> ids { join(:occupations).where(occupations: {ids: ids}) }
  
end
