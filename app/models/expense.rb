class Expense < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :user
  belongs_to :week

  has_many :expense_responsibilities
  has_many :users, through: :expense_responsibilities

  default_scope {order(:transaction_date)}

  

  # the form should default current user: try :selected => 1
  # week should default the closest week
  # make expense type a drop_down and default to expense



  # I think I need another model to handle the calculations of splitting this up
   # make calculation method based on type: expense, fee, or credit
   # methods for splitting the expense: even or random ways; maybe provide caculator
   # show users balence within house. How much money do they owed or are creditted?
   # suggest who to pay: suggest paying the person who is owed the most. If you owe more than that person is owed pay until they are owed and then suggest paying the next person with the remaining balence. Recursion needed.
 # when splitting up the bill use js (react) to show how much is entered total and how more is needed to equal expense amount
end
