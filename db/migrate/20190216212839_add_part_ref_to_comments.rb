class AddPartRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :part, foreign_key: true
  end
end
