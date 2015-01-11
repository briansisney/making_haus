class NoList < ActiveRecord::Base
  belongs_to :user
  # user is always current_user
end
