class CreateExpenseResponsibilities < ActiveRecord::Migration
  def change
    create_table :expense_responsibilities do |t|
      t.references :expense, index: true
      t.references :user, index: true
      t.float :amount

      t.timestamps null: false
    end
    add_foreign_key :expense_responsibilities, :expenses
    add_foreign_key :expense_responsibilities, :users
  end
end
