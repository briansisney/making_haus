class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.boolean :email

      t.timestamps null: false
    end
  end
end
