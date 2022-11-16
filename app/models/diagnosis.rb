class Diagnosis < ApplicationRecord
  belongs_to :appointment
  belongs_to :user
  has_many :prescriptions, inverse_of: :diagnosis
  accepts_nested_attributes_for :prescriptions, reject_if: :all_blank, allow_destroy: true
end
