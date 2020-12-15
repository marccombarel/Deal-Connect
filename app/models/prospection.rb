class Prospection < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many   :contacts,  through: :companies

  validates  :name,      presence: true
end
