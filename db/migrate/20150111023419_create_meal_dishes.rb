class CreateMealDishes < ActiveRecord::Migration
  def change
    create_table :meal_dishes do |t|
      t.references :meal, index: true
      t.references :dish, index: true

      t.timestamps null: false
    end
    add_foreign_key :meal_dishes, :meals
    add_foreign_key :meal_dishes, :dishes
  end
end
