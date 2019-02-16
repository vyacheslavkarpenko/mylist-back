class AddJobRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :job, foreign_key: true
  end
end
