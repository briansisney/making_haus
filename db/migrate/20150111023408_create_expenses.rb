class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.float :amount
      t.references :receipt, index: true
      t.date :transaction_date
      t.references :user, index: true
      t.references :week, index: true
      t.string :expense_type

      t.timestamps null: false
    end
    add_foreign_key :expenses, :receipts
    add_foreign_key :expenses, :users
    add_foreign_key :expenses, :weeks
  end
end
