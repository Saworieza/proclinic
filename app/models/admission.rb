class Admission < ApplicationRecord
  belongs_to :ward
  belongs_to :appointment
  belongs_to :user
end
