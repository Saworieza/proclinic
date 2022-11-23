class Lab < ApplicationRecord
  belongs_to :appointment
  belongs_to :user
end
