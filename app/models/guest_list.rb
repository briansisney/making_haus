class GuestList < ActiveRecord::Base
  belongs_to :user
  belongs_to :week
  belongs_to :guest, :class_name => "User"
  # make sure you can't choose a member or yourself
end
