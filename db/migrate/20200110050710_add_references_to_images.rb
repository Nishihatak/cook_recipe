class AddReferencesToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :recipe, null: false, foreign_key: true
  end
end
