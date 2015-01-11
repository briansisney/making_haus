class ExpenseResponsibility < ActiveRecord::Base
  belongs_to :expense
  belongs_to :user
end
