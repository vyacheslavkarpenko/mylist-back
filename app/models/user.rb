class User < ApplicationRecord
  has_many :jobs
  has_many :parts
  has_many :tasks
  has_many :comments
end
