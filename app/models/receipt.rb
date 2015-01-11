class Receipt < ActiveRecord::Base
  has_many :expenses
  # make email default to false
end
