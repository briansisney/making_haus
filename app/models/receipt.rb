class Receipt < ActiveRecord::Base
  has_many :expenses
end
