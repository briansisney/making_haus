class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.date :meal_date
      t.references :week, index: true

      t.timestamps null: false
    end
    add_foreign_key :meals, :weeks
  end
end
