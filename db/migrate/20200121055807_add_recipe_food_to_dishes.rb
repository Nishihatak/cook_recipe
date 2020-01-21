class AddRecipeFoodToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :food, :text
    add_column :dishes, :recipe, :text
  end
end
