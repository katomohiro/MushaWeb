class Career < ApplicationRecord
  # n:1
  belongs_to :person
  
  # 1:n
  has_many :career_occupation
  has_many :career_industry
  
  # n:m
  has_many :occupation, through: :career_occupation
  has_many :industry, through: :career_industry
end
