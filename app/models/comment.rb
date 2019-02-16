class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :part
  belongs_to :task
end
