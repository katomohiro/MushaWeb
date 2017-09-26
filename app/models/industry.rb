class Industry < ApplicationRecord
  # n:1
  
  # 1:n
  has_many :career_industry
  
  # n:m
  has_many :careers, through: :career_industry
  
end
