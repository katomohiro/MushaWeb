class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # n:1
  belongs_to :area

  # 1:n
  
  # n:m
  has_and_belongs_to_many :occupations
  has_and_belongs_to_many :industries
  
end
