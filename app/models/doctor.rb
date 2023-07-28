class Doctor < ActiveRecord::Base
  has_many :interns
  #doctor.intern
  has_many :consultations
  has_many :patients, through: :consultations

  validates :first_name, :last_name, presence: true
  validates :last_name, length: { minimum: 3 }
  validates :email, format: { with: /\A.*@.*\.com\z/ }
end