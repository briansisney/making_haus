class CreateGuestLists < ActiveRecord::Migration
  def change
    create_table :guest_lists do |t|
      t.references :user, index: true
      t.integer :guest_id
      t.references :week, index: true

      t.timestamps null: false
    end
    add_foreign_key :guest_lists, :users
    add_foreign_key :guest_lists, :weeks
  end
end
