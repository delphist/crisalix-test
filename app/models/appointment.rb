class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  scope :newest, -> { order('created_at DESC') }

  has_many_attached :images

  validates :images,
            presence: true,
            content_type: ['image/jpg', 'image/jpeg', 'image/png'],
            length: { minimum: 3 }

  validate :possible_to_schedule?

  def possible_to_schedule?
    errors.add(:scheduled_at, 'should not be in past') if scheduled_at < Time.zone.now + 30.minutes
  end
end
