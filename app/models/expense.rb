class Expense < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :user
  belongs_to :week
end
