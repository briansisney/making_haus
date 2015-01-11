class Payment < ActiveRecord::Base
  belongs_to :actor, class_name: "User", foreign_key: "actor_id"
  belongs_to :target, class_name: "User", foreign_key: "target_id"
  belongs_to :reporter, class_name: "User", foreign_key: "reporter_id"

  default_scope {order(:date_completed)}
# this update either needs to be in real time or have an update button, minimum update everyday
# only make call for last day because nothing will be updated
# be able to pay through app using venmo
# make platform a dropdown

# if people are inputting this then there should be validation on columns but I dont think that people will 
end
