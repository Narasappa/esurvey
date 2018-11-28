class Notification < ActiveRecord::Base
  attr_accessible :event, :is_deleted, :is_read, :receiver_id, :sender_id
  
end
