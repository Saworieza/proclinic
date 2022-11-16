class Patient < ApplicationRecord
  belongs_to :user
  has_many :appointments

  has_many :kins, dependent: :destroy, inverse_of: :patient
  accepts_nested_attributes_for :kins, reject_if: :all_blank, allow_destroy: true
end
