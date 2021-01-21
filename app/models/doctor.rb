class Doctor < ApplicationRecord
  has_one :user, as: :profile
  has_many :appointments

  validates :name, :city, presence: true, length: { in: 3..100 }
end
