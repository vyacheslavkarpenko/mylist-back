class Part < ApplicationRecord
  has_many :tasks
  has_many :comments
  belongs_to :user
  belongs_to :job
end
