class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :department
  belongs_to :user
end
