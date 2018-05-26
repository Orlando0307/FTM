class User < ApplicationRecord
  validates :name,presence: true
  validates :email, presence: true
  validates :birthday, presence: true

  has_secure_password

end
