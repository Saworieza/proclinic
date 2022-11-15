class Prescription < ApplicationRecord
  belongs_to :diagnosis
  belongs_to :user
end
