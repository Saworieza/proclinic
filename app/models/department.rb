class Department < ApplicationRecord
  belongs_to :doctor
  belongs_to :user
end
