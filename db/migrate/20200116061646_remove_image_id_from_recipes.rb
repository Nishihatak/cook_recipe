class RemoveImageIdFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :image_id, :references
  end
end
