class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.references :user, foreign_key: true, null: false
      t.string     :title,null: false
      t.text       :kotu
      t.integer    :time,  default: 0
      t.timestamps
    end
  end
end
