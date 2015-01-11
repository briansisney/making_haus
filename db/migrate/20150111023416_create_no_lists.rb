class CreateNoLists < ActiveRecord::Migration
  def change
    create_table :no_lists do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :no_lists, :users
  end
end
