class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :description
      t.integer :cal
      t.integer :meal_id

      t.timestamps
    end
    add_index :menus, :meal_id
  end
end
