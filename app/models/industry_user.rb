class IndustryUser < ApplicationRecord
  belongs_to :industry
  belongs_to :user
end
