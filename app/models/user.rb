class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    has_role?(:admin)
  end

  def doc?
    has_role?(:doc)
  end

  def labtech?
    has_role?(:labtech)
  end

  def pharmacist?
    has_role?(:pharmacist)
  end

  def accountant?
    has_role?(:accountant)
  end
end
