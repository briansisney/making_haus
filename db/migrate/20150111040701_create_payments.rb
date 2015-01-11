class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :date_completed
      t.float :amount
      t.string :platform
      t.integer :actor_id
      t.integer :target_id
      t.integer :reproter_id

      t.timestamps null: false
    end
  end
end
