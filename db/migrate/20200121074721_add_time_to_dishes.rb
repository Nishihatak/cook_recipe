class AddTimeToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :cooktime, :integer
  end
end
