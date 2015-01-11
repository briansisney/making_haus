class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :picture
      t.string :email
      t.boolean :guest
      t.string :shirt_size

      t.timestamps null: false
    end
  end
end
