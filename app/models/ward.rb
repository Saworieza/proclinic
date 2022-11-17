class Ward < ApplicationRecord
  belongs_to :doctor
  belongs_to :user

  has_many :rooms
end
