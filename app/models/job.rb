class Job < ApplicationRecord
  has_many :parts
  has_many :tasks
  has_many :comments
  belongs_to :user
end
