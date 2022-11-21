class Appointment < ApplicationRecord
  after_create :set_token

  belongs_to :patient
  belongs_to :doctor
  belongs_to :department
  belongs_to :user

  has_many :payments

  def set_token
    self.update_attribute(:token, Time.now.strftime("%Y")+ '/' + ("%.3i" %self.id))
  end
end
