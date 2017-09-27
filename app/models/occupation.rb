class Occupation < ApplicationRecord
  # n:1
  
  # 1:n

  # n:m
  has_and_belongs_to_many :careers
  
end
