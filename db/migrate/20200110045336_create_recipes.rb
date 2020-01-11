class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.references :dish, foreign_key: true, null: false
      t.references :image, foreign_key: true, null: false
      t.text       :recipe, null:false
      t.timestamps
    end
  end
end
