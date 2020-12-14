class Company < ApplicationRecord
  has_many  :contacts
  has_many  :locations
  has_many  :users,    through: :prospections

  validates :name,     presence: true
  validates :url,      presence: true
  validates :industry, presence: true
  # validates :size, presence: true
  # validates :info, presence: true
  # validates :revenue, presence: true
  # validates :ad_spend, presence: true
end
