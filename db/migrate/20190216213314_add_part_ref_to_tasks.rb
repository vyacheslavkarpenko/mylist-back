class AddPartRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :part, foreign_key: true
  end
end
