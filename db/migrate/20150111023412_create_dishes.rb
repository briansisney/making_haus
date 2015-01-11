class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.references :user, index: true
      t.text :recipe

      t.timestamps null: false
    end
    add_foreign_key :dishes, :users
  end
end
