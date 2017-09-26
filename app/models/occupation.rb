class Occupation < ApplicationRecord
  # n:1
  
  # 1:n
  has_many :career_occupation

  # n:m
  has_many :careers, through: :career_occupation
  
end
