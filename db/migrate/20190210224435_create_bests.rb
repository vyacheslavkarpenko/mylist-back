class CreateBests < ActiveRecord::Migration[5.2]
  def change
    create_table :bests do |t|
      t.string :best

      t.timestamps
    end
  end
end
