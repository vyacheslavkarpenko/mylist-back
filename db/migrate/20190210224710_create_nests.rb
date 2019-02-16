class CreateNests < ActiveRecord::Migration[5.2]
  def change
    create_table :nests do |t|
      t.string :nest

      t.timestamps
    end
  end
end
