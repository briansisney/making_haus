class CreateGroceryUnits < ActiveRecord::Migration
  def change
    create_table :grocery_units do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
