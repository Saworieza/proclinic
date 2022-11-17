class Room < ApplicationRecord
  belongs_to :ward
  belongs_to :user
end
