class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.datetime :at
      t.string :description
      t.string :url
      t.string :image
      t.integer :seiyu_id

      t.timestamps
    end
    add_index :meals, :seiyu_id
    add_index :meals, :at
  end
end
