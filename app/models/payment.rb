class Payment < ApplicationRecord
  belongs_to :appointment
  belongs_to :admission
  belongs_to :user
end
