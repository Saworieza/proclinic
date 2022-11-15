class Kin < ApplicationRecord
  belongs_to :patient
  belongs_to :user
end
