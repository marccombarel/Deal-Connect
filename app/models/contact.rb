class Contact < ApplicationRecord
  belongs_to :company

  validates  :first_name, presence: true
  validates  :last_name,  presence: true
  validates  :job_title,  presence: true
  validates  :url,        presence: true
  # validates :info, presence: true
  # validates :email, presence: true
  # validates :phone, presence: true
end
