class Payment < ActiveRecord::Base
  belongs_to :actor, class_name: "User", foreign_key: "actor_id"
  belongs_to :target, class_name: "User", foreign_key: "target_id"
  belongs_to :reporter, class_name: "User", foreign_key: "reporter_id"
end
