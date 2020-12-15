class Country < ApplicationRecord
  belongs_to :company
  has_many   :cities
  validates  :name, presence: true
  validates  :iso,  presence: true
end
