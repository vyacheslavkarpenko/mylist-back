class AddJobRefToPart < ActiveRecord::Migration[5.2]
  def change
    add_reference :parts, :job, foreign_key: true
  end
end
