class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :profile, polymorphic: true

  accepts_nested_attributes_for :profile

  def doctor?
    profile.is_a? Doctor
  end

  def patient?
    profile.is_a? Patient
  end
end
