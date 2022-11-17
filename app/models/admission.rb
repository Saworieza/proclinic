class Admission < ApplicationRecord
  belongs_to :room
  belongs_to :appointment
  belongs_to :user
end
