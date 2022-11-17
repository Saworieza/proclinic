class Room < ApplicationRecord
  belongs_to :ward
  belongs_to :user

  has_many :admissions, dependent: :destroy, inverse_of: :room
  accepts_nested_attributes_for :admissions, reject_if: :all_blank, allow_destroy: true
end
