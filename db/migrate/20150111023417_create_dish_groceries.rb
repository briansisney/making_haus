class CreateDishGroceries < ActiveRecord::Migration
  def change
    create_table :dish_groceries do |t|
      t.references :grocery_item, index: true
      t.references :dish, index: true

      t.timestamps null: false
    end
    add_foreign_key :dish_groceries, :grocery_items
    add_foreign_key :dish_groceries, :dishes
  end
end
