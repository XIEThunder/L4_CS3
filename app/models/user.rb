class User < ApplicationRecord
  validates :uid, presence: true, uniqueness: true
  has_secure_password
end
