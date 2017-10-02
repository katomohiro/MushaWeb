class Industry < ApplicationRecord
  # n:1
  
  # 1:n

  # n:m
  has_and_belongs_to_many :users
  has_and_belongs_to_many :careers
  has_and_belongs_to_many :articles
  
end
