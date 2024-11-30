class Appointment < ApplicationRecord
  belongs_to :Physician
  belongs_to :Patient

  validates :appointment_date, :location, :status, presence: true
end
