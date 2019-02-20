class User < ApplicationRecord
  has_many :jobs
  has_many :parts
  has_many :tasks
  has_many :comments

  has_secure_password

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 8, maximum: 64 }

  mount_uploader :avatar, AvatarUploader
end
