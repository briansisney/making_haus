class User < ActiveRecord::Base
  has_many :user_allergies
  has_many :allergies, through: :user_allergies
  has_many :schedules
  has_many :no_lists
  has_many :expenses

  has_many :guest_lists
  has_many :guests, through: :guest_lists
  has_many :inverse_guest_lists, class_name: "GuestList", :foreign_key: "guest_id"
  has_many :hosts, through: :inverse_guest_lists, source: :user

  has_many :expense_responsibilities
  has_many :expenses, through: :expense_responsibilities

  # need a permissioning method so guests can only see their week

  def as_actor
    Payment.where(actor_id: self)
  end
  def as_target
    Payment.where(target_id: self)
  end
  def as_reporter
    Payment.where(reporter_id: self)
  end

end
