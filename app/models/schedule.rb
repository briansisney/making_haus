class Schedule < ActiveRecord::Base
  belongs_to :week
  belongs_to :user
end
