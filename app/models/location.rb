class Location < ApplicationRecord
  belongs_to :company

  validates  :country, presence: true
  validates  :city,    presence: true
end
