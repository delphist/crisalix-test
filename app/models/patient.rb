class Patient < ApplicationRecord
  has_one :user, as: :profile
  has_many :appointments

  validates :name, presence: true, length: { in: 3..100 }
end
