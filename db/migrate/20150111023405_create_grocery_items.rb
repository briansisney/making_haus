class CreateGroceryItems < ActiveRecord::Migration
  def change
    create_table :grocery_items do |t|
      t.references :ingredient, index: true
      t.float :amount
      t.references :grocery_unit, index: true

      t.timestamps null: false
    end
    add_foreign_key :grocery_items, :ingredients
    add_foreign_key :grocery_items, :grocery_units
  end
end
