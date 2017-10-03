class Career < ApplicationRecord
  # n:1
  belongs_to :person
  
  # 1:n
  
  # n:m
  has_and_belongs_to_many :occupations
  has_and_belongs_to_many :industries
end
