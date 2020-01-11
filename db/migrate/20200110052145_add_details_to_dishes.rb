class AddDetailsToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :info, :text
    add_column :dishes, :image, :string
  end
end
