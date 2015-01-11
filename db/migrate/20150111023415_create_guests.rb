class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.references :user, index: true
      t.integer :guest_id
      t.references :week, index: true

      t.timestamps null: false
    end
    add_foreign_key :guests, :users
    add_foreign_key :guests, :weeks
  end
end
