class Expense < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :user
  belongs_to :week

  has_many :expense_responsibilities
  has_many :users, through: :expense_responsibilities

  default_scope order: :transaction_date
end
