class User < ApplicationRecord
  has_many :ratings
  has_many :guides, through: :ratings
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

end
